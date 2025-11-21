#!/bin/bash
#https://firebase.google.com/docs/app-distribution/android/distribute-gradle
export GOOGLE_APPLICATION_CREDENTIALS="/Users/D/app/firebase/dev/app-dev-a8f27-firebase-adminsdk-fbsvc-8a8d8d2b4a.json"

EXPECTED_PROJECT_NUMBER="asd"

git checkout .

# ✅ Extract project_number directly from google-services.json
PROJECT_NUMBER=$(grep -o '"project_number": *"[^"]*' app/google-services.json | sed 's/"project_number": *"//')

echo "ℹ️ Found project_number: $PROJECT_NUMBER"

if [[ "$PROJECT_NUMBER" != "$EXPECTED_PROJECT_NUMBER" ]]; then
  echo "❌ project_number mismatch! Expected: $EXPECTED_PROJECT_NUMBER, Found: $PROJECT_NUMBER"
  exit 1
fi

echo "✅ project_number matches expected value."

RELEASE_NOTES=$(<"release-notes.txt")
CURRENT_BRANCH=$(git rev-parse --abbrev-ref HEAD)

GIT_LOG=$(git log -n 10 --pretty=format:"%h - %B")

FINAL_NOTES="${RELEASE_NOTES}\n\nBranch: ${CURRENT_BRANCH}\nChangelog:\n${GIT_LOG}"

echo "$FINAL_NOTES" > release_notes_combined.txt

cat release_notes_combined.txt

./gradlew clean
./gradlew bundleRelease
