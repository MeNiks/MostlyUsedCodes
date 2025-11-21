#!/bin/bash
#https://firebase.google.com/docs/app-distribution/android/distribute-gradle
export GOOGLE_APPLICATION_CREDENTIALS="/Users/D/app/firebase/dev/app-dev-a8f27-firebase-adminsdk-fbsvc-8a8d8d2b4a.json"

RELEASE_NOTES_FILE="release-notes.txt"

if [[ ! -f "$RELEASE_NOTES_FILE" ]]; then
  echo "❌ $RELEASE_NOTES_FILE not found!"
  exit 1
fi

RELEASE_NOTES=$(<"$RELEASE_NOTES_FILE")

CURRENT_BRANCH=$(git rev-parse --abbrev-ref HEAD)

GIT_LOG=$(git log -n 10 --pretty=format:"%h - %B")

FINAL_NOTES="${RELEASE_NOTES}\n\nBranch: ${CURRENT_BRANCH}\n\nChangelog:\n${GIT_LOG}"

echo "$FINAL_NOTES" > release_notes_combined.txt

cat release_notes_combined.txt

#--testers="$TESTER_EMAILS"
#TESTER_EMAILS="nikhilesh@some.com"

#--groups
GROUP_LIST="me"
#GROUP_LIST="android-team"

./update_version.sh

./gradlew clean
./gradlew assembleDebug appDistributionUploadDebug --artifactType="APK" --groups="$GROUP_LIST" --releaseNotesFile=release_notes_combined.txt
./gradlew assembleRelease appDistributionUploadRelease --artifactType="APK" --groups="$GROUP_LIST" --releaseNotesFile=release_notes_combined.txt

rm release_notes_combined.txt
