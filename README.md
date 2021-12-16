# Screenshot Taking(Clear Status Bar)
Note - FYI use System UI Tunner to hide/show status bar icons
```
adb shell settings put global sysui_demo_allowed 1
```

Display time 12:00
```
adb shell am broadcast -a com.android.systemui.demo -e command clock -e hhmm 1200
```
Display full mobile data without type
```
adb shell am broadcast -a com.android.systemui.demo -e command network -e mobile show -e level 4 -e datatype false
```
Hide notifications
```
adb shell am broadcast -a com.android.systemui.demo -e command notifications -e visible false
```
Show full battery but not in charging state
```
adb shell am broadcast -a com.android.systemui.demo -e command battery -e plugged false -e level 100
```
Exit Changes
```
adb shell am broadcast -a com.android.systemui.demo -e command exit
```

# Emulator Commandline
```
Skin Path
/Users/Drive/androidsdk/skins

Adv created path
/Users/nikhilesh/.android/avd

List sdk
sdkmanager --list

Install Tools
sdkmanager "platform-tools" "platforms;android-28

Install System Image
sdkmanager "system-images;android-R;google_apis_playstore;x86"

Avd List
avdmanager list device
emulator -list-avds

Create Avd
avdmanager create avd -n avdtest -k "system-images;android-R;google_apis_playstore;x86" -d "pixel"

Delete Avd
avdmanager delete avd -n avdtest
or
cd ~/.android/avd
rm -rf emulatorNameIWantToDelete.*

Start adb synchronously
emulator -avd avdtest -netdelay none -netspeed full

Start adb asynchronously
emulator -avd avdtest -no-snapshot -no-window -no-audio -no-boot-anim -camera-back none -camera-front none -qemu -m 2048 > /dev/null 2>&1 &
After starting avd wait terminal till avd boots
adb wait-for-device shell 'while [[ -z $(getprop sys.boot_completed | tr -d '\r') ]]; do sleep 1; done; input keyevent 82'

Kill emulator
adb -s emulator-5554 emu kill //where emulator-5544 - emulator name.

Mac
ps -ax | grep emulator 
kill -9 PID
```

# Zoom Emulator
1. Cmd + Down Arrow = Decrease Screen Size
2. Cmd + Up Arrow = Increase Screen Size
3. Cmd + Right Arrow = Change Screen Orientation

# Commands

To print keystore signature details
```
keytool -list -v -keystore sample.jks -alias sample
```

To print apk signature details
```
keytool -printcert -jarfile main-1.0-release.apk
```

# Gradle
In Gradle to read parameter Value
```
project.property("autoIncrement")
```
In Gradle to check if contains key
```
project.hasProperty("autoIncrement")
```
All Gradle Tasks 
```
val runTasks = gradle.startParameter.taskNames
```

# Optimize Gradle

1. Settings->Compiler->In Command line Options
```
-Pdisable-performance-plugin -PdevBuild --offline
```

2. Gradle Offline
Avoids checking dependency updates

3. gradle.properties
```
org.gradle.daemon=true
org.gradle.jvmargs=-Xmx8192m -XX:MaxPermSize=2048m -XX:+HeapDumpOnOutOfMemoryError -Dfile.encoding=UTF-8
org.gradle.parallel=true
org.gradle.configureondemand=false
android.useAndroidX=true
android.enableJetifier=true
org.gradle.caching=true
android.enableBuildCache=true
```
    
Android User Agent
```
    Mozilla/5.0 (Linux; Android 6.0; Redmi Pro Build/MRA58K)
```

iOS User Agent
```
    Mozilla/5.0 (iPhone; CPU iPhone OS 5_0 like Mac OS X) AppleWebKit/534.46 (KHTML, like Gecko) Version/5.1 Mobile/9A334 Safari/7534.48.3
```
