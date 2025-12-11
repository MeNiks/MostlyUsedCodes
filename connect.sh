#!/bin/bash

# Restart adb in TCP/IP mode on port 5555
echo "🔄 Restarting adb in tcpip mode..."
adb tcpip 5555

# Wait for a second to ensure it restarts
sleep 2

# Get the device IP address from route command
DEVICE_IP=$(adb shell ip route | awk '{print $9}')

if [ -z "$DEVICE_IP" ]; then
  echo "❌ Could not determine device IP. Make sure the device is connected via USB and adb is authorized."
  exit 1
fi

echo "📱 Device IP found: $DEVICE_IP"

# Connect to the device over Wi-Fi
echo "🔌 Connecting to $DEVICE_IP:5555..."
CONNECT_OUTPUT=$(adb connect "$DEVICE_IP:5555" 2>&1)
echo $CONNECT_OUTPUT

if echo "$CONNECT_OUTPUT" | grep -q "connected to"; then
  echo "✅ Done! You are now connected over Wi-Fi."
else
  echo "❌ Failed to connect. Check that your PC and device are on the same Wi-Fi network."
fi
