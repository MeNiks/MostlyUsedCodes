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

Skin Path
```
/Users/Drive/androidsdk/skins
```

Adv created path
```
/Users/nikhilesh/.android/avd
```

List sdk
```
sdkmanager --list
Available Packages:
  Path                                                                                     | Version      | Description
  -------                                                                                  | -------      | -------
  add-ons;addon-google_apis-google-15                                                      | 3            | Google APIs
  add-ons;addon-google_apis-google-16                                                      | 4            | Google APIs
  add-ons;addon-google_apis-google-17                                                      | 4            | Google APIs
  add-ons;addon-google_apis-google-18                                                      | 4            | Google APIs
  add-ons;addon-google_apis-google-19                                                      | 20           | Google APIs
  add-ons;addon-google_apis-google-21                                                      | 1            | Google APIs
  add-ons;addon-google_apis-google-22                                                      | 1            | Google APIs
  add-ons;addon-google_apis-google-23                                                      | 1            | Google APIs
  add-ons;addon-google_apis-google-24                                                      | 1            | Google APIs
  build-tools;19.1.0                                                                       | 19.1.0       | Android SDK Build-Tools 19.1
  build-tools;20.0.0                                                                       | 20.0.0       | Android SDK Build-Tools 20
  build-tools;21.1.2                                                                       | 21.1.2       | Android SDK Build-Tools 21.1.2
  build-tools;22.0.1                                                                       | 22.0.1       | Android SDK Build-Tools 22.0.1
  build-tools;23.0.1                                                                       | 23.0.1       | Android SDK Build-Tools 23.0.1
  build-tools;23.0.2                                                                       | 23.0.2       | Android SDK Build-Tools 23.0.2
  build-tools;23.0.3                                                                       | 23.0.3       | Android SDK Build-Tools 23.0.3
  build-tools;24.0.0                                                                       | 24.0.0       | Android SDK Build-Tools 24
  build-tools;24.0.1                                                                       | 24.0.1       | Android SDK Build-Tools 24.0.1
  build-tools;24.0.2                                                                       | 24.0.2       | Android SDK Build-Tools 24.0.2
  build-tools;24.0.3                                                                       | 24.0.3       | Android SDK Build-Tools 24.0.3
  build-tools;25.0.0                                                                       | 25.0.0       | Android SDK Build-Tools 25
  build-tools;25.0.1                                                                       | 25.0.1       | Android SDK Build-Tools 25.0.1
  build-tools;25.0.2                                                                       | 25.0.2       | Android SDK Build-Tools 25.0.2
  build-tools;25.0.3                                                                       | 25.0.3       | Android SDK Build-Tools 25.0.3
  build-tools;26.0.0                                                                       | 26.0.0       | Android SDK Build-Tools 26
  build-tools;26.0.1                                                                       | 26.0.1       | Android SDK Build-Tools 26.0.1
  build-tools;26.0.2                                                                       | 26.0.2       | Android SDK Build-Tools 26.0.2
  build-tools;26.0.3                                                                       | 26.0.3       | Android SDK Build-Tools 26.0.3
  build-tools;27.0.0                                                                       | 27.0.0       | Android SDK Build-Tools 27
  build-tools;27.0.1                                                                       | 27.0.1       | Android SDK Build-Tools 27.0.1
  build-tools;27.0.2                                                                       | 27.0.2       | Android SDK Build-Tools 27.0.2
  build-tools;27.0.3                                                                       | 27.0.3       | Android SDK Build-Tools 27.0.3
  build-tools;28.0.0                                                                       | 28.0.0       | Android SDK Build-Tools 28
  build-tools;28.0.1                                                                       | 28.0.1       | Android SDK Build-Tools 28.0.1
  build-tools;28.0.2                                                                       | 28.0.2       | Android SDK Build-Tools 28.0.2
  build-tools;28.0.3                                                                       | 28.0.3       | Android SDK Build-Tools 28.0.3
  build-tools;29.0.0                                                                       | 29.0.0       | Android SDK Build-Tools 29
  build-tools;29.0.1                                                                       | 29.0.1       | Android SDK Build-Tools 29.0.1
  build-tools;29.0.2                                                                       | 29.0.2       | Android SDK Build-Tools 29.0.2
  build-tools;29.0.3                                                                       | 29.0.3       | Android SDK Build-Tools 29.0.3
  build-tools;30.0.0                                                                       | 30.0.0       | Android SDK Build-Tools 30
  build-tools;30.0.1                                                                       | 30.0.1       | Android SDK Build-Tools 30.0.1
  build-tools;30.0.2                                                                       | 30.0.2       | Android SDK Build-Tools 30.0.2
  build-tools;30.0.3                                                                       | 30.0.3       | Android SDK Build-Tools 30.0.3
  build-tools;31.0.0                                                                       | 31.0.0       | Android SDK Build-Tools 31
  build-tools;32.0.0                                                                       | 32.0.0       | Android SDK Build-Tools 32
  cmake;3.10.2.4988404                                                                     | 3.10.2       | CMake 3.10.2.4988404
  cmake;3.18.1                                                                             | 3.18.1       | CMake 3.18.1
  cmake;3.6.4111459                                                                        | 3.6.4111459  | CMake 3.6.4111459
  cmdline-tools;1.0                                                                        | 1.0          | Android SDK Command-line Tools
  cmdline-tools;2.1                                                                        | 2.1          | Android SDK Command-line Tools
  cmdline-tools;3.0                                                                        | 3.0          | Android SDK Command-line Tools
  cmdline-tools;4.0                                                                        | 4.0          | Android SDK Command-line Tools
  cmdline-tools;5.0                                                                        | 5.0          | Android SDK Command-line Tools
  cmdline-tools;latest                                                                     | 5.0          | Android SDK Command-line Tools (latest)
  emulator                                                                                 | 31.1.4       | Android Emulator
  extras;android;m2repository                                                              | 47.0.0       | Android Support Repository
  extras;google;auto                                                                       | 1.1          | Android Auto Desktop Head Unit Emulator
  extras;google;google_play_services                                                       | 49           | Google Play services
  extras;google;instantapps                                                                | 1.9.0        | Google Play Instant Development SDK
  extras;google;m2repository                                                               | 58           | Google Repository
  extras;google;market_apk_expansion                                                       | 1            | Google Play APK Expansion library
  extras;google;market_licensing                                                           | 1            | Google Play Licensing Library
  extras;google;simulators                                                                 | 1            | Android Auto API Simulators
  extras;google;webdriver                                                                  | 2            | Google Web Driver
  extras;intel;Hardware_Accelerated_Execution_Manager                                      | 7.6.5        | Intel x86 Emulator Accelerator (HAXM installer)
  extras;m2repository;com;android;support;constraint;constraint-layout-solver;1.0.0        | 1            | Solver for ConstraintLayout 1.0.0
  extras;m2repository;com;android;support;constraint;constraint-layout-solver;1.0.0-alpha4 | 1            | com.android.support.constraint:constraint-layout-solver:1.0.0-alpha4
  extras;m2repository;com;android;support;constraint;constraint-layout-solver;1.0.0-alpha8 | 1            | Solver for ConstraintLayout 1.0.0-alpha8
  extras;m2repository;com;android;support;constraint;constraint-layout-solver;1.0.0-beta1  | 1            | Solver for ConstraintLayout 1.0.0-beta1
  extras;m2repository;com;android;support;constraint;constraint-layout-solver;1.0.0-beta2  | 1            | Solver for ConstraintLayout 1.0.0-beta2
  extras;m2repository;com;android;support;constraint;constraint-layout-solver;1.0.0-beta3  | 1            | Solver for ConstraintLayout 1.0.0-beta3
  extras;m2repository;com;android;support;constraint;constraint-layout-solver;1.0.0-beta4  | 1            | Solver for ConstraintLayout 1.0.0-beta4
  extras;m2repository;com;android;support;constraint;constraint-layout-solver;1.0.0-beta5  | 1            | Solver for ConstraintLayout 1.0.0-beta5
  extras;m2repository;com;android;support;constraint;constraint-layout-solver;1.0.1        | 1            | Solver for ConstraintLayout 1.0.1
  extras;m2repository;com;android;support;constraint;constraint-layout-solver;1.0.2        | 1            | Solver for ConstraintLayout 1.0.2
  extras;m2repository;com;android;support;constraint;constraint-layout;1.0.0               | 1            | ConstraintLayout for Android 1.0.0
  extras;m2repository;com;android;support;constraint;constraint-layout;1.0.0-alpha4        | 1            | com.android.support.constraint:constraint-layout:1.0.0-alpha4
  extras;m2repository;com;android;support;constraint;constraint-layout;1.0.0-alpha8        | 1            | ConstraintLayout for Android 1.0.0-alpha8
  extras;m2repository;com;android;support;constraint;constraint-layout;1.0.0-beta1         | 1            | ConstraintLayout for Android 1.0.0-beta1
  extras;m2repository;com;android;support;constraint;constraint-layout;1.0.0-beta2         | 1            | ConstraintLayout for Android 1.0.0-beta2
  extras;m2repository;com;android;support;constraint;constraint-layout;1.0.0-beta3         | 1            | ConstraintLayout for Android 1.0.0-beta3
  extras;m2repository;com;android;support;constraint;constraint-layout;1.0.0-beta4         | 1            | ConstraintLayout for Android 1.0.0-beta4
  extras;m2repository;com;android;support;constraint;constraint-layout;1.0.0-beta5         | 1            | ConstraintLayout for Android 1.0.0-beta5
  extras;m2repository;com;android;support;constraint;constraint-layout;1.0.1               | 1            | ConstraintLayout for Android 1.0.1
  extras;m2repository;com;android;support;constraint;constraint-layout;1.0.2               | 1            | ConstraintLayout for Android 1.0.2
  ndk-bundle                                                                               | 22.1.7171670 | NDK
  ndk;16.1.4479499                                                                         | 16.1.4479499 | NDK (Side by side) 16.1.4479499
  ndk;17.2.4988734                                                                         | 17.2.4988734 | NDK (Side by side) 17.2.4988734
  ndk;18.1.5063045                                                                         | 18.1.5063045 | NDK (Side by side) 18.1.5063045
  ndk;19.2.5345600                                                                         | 19.2.5345600 | NDK (Side by side) 19.2.5345600
  ndk;20.0.5594570                                                                         | 20.0.5594570 | NDK (Side by side) 20.0.5594570
  ndk;20.1.5948944                                                                         | 20.1.5948944 | NDK (Side by side) 20.1.5948944
  ndk;21.0.6113669                                                                         | 21.0.6113669 | NDK (Side by side) 21.0.6113669
  ndk;21.1.6352462                                                                         | 21.1.6352462 | NDK (Side by side) 21.1.6352462
  ndk;21.2.6472646                                                                         | 21.2.6472646 | NDK (Side by side) 21.2.6472646
  ndk;21.3.6528147                                                                         | 21.3.6528147 | NDK (Side by side) 21.3.6528147
  ndk;21.4.7075529                                                                         | 21.4.7075529 | NDK (Side by side) 21.4.7075529
  ndk;22.0.7026061                                                                         | 22.0.7026061 | NDK (Side by side) 22.0.7026061
  ndk;22.1.7171670                                                                         | 22.1.7171670 | NDK (Side by side) 22.1.7171670
  ndk;23.0.7599858                                                                         | 23.0.7599858 | NDK (Side by side) 23.0.7599858
  ndk;23.1.7779620                                                                         | 23.1.7779620 | NDK (Side by side) 23.1.7779620
  patcher;v4                                                                               | 1            | SDK Patch Applier v4
  platform-tools                                                                           | 31.0.3       | Android SDK Platform-Tools
  platforms;android-10                                                                     | 2            | Android SDK Platform 10
  platforms;android-11                                                                     | 2            | Android SDK Platform 11
  platforms;android-12                                                                     | 3            | Android SDK Platform 12
  platforms;android-13                                                                     | 1            | Android SDK Platform 13
  platforms;android-14                                                                     | 4            | Android SDK Platform 14
  platforms;android-15                                                                     | 5            | Android SDK Platform 15
  platforms;android-16                                                                     | 5            | Android SDK Platform 16
  platforms;android-17                                                                     | 3            | Android SDK Platform 17
  platforms;android-18                                                                     | 3            | Android SDK Platform 18
  platforms;android-19                                                                     | 4            | Android SDK Platform 19
  platforms;android-20                                                                     | 2            | Android SDK Platform 20
  platforms;android-21                                                                     | 2            | Android SDK Platform 21
  platforms;android-22                                                                     | 2            | Android SDK Platform 22
  platforms;android-23                                                                     | 3            | Android SDK Platform 23
  platforms;android-24                                                                     | 2            | Android SDK Platform 24
  platforms;android-25                                                                     | 3            | Android SDK Platform 25
  platforms;android-26                                                                     | 2            | Android SDK Platform 26
  platforms;android-27                                                                     | 3            | Android SDK Platform 27
  platforms;android-28                                                                     | 6            | Android SDK Platform 28
  platforms;android-29                                                                     | 5            | Android SDK Platform 29
  platforms;android-30                                                                     | 3            | Android SDK Platform 30
  platforms;android-31                                                                     | 1            | Android SDK Platform 31
  platforms;android-32                                                                     | 1            | Android SDK Platform 32
  platforms;android-7                                                                      | 3            | Android SDK Platform 7
  platforms;android-8                                                                      | 3            | Android SDK Platform 8
  platforms;android-9                                                                      | 2            | Android SDK Platform 9
  skiaparser;1                                                                             | 6            | Layout Inspector image server for API 29-30
  skiaparser;2                                                                             | 3            | Layout Inspector image server for API S
  sources;android-15                                                                       | 2            | Sources for Android 15
  sources;android-16                                                                       | 2            | Sources for Android 16
  sources;android-17                                                                       | 1            | Sources for Android 17
  sources;android-18                                                                       | 1            | Sources for Android 18
  sources;android-19                                                                       | 2            | Sources for Android 19
  sources;android-20                                                                       | 1            | Sources for Android 20
  sources;android-21                                                                       | 1            | Sources for Android 21
  sources;android-22                                                                       | 1            | Sources for Android 22
  sources;android-23                                                                       | 1            | Sources for Android 23
  sources;android-24                                                                       | 1            | Sources for Android 24
  sources;android-25                                                                       | 1            | Sources for Android 25
  sources;android-26                                                                       | 1            | Sources for Android 26
  sources;android-27                                                                       | 1            | Sources for Android 27
  sources;android-28                                                                       | 1            | Sources for Android 28
  sources;android-29                                                                       | 1            | Sources for Android 29
  sources;android-30                                                                       | 1            | Sources for Android 30
  sources;android-31                                                                       | 1            | Sources for Android 31
  system-images;android-10;default;armeabi-v7a                                             | 5            | ARM EABI v7a System Image
  system-images;android-10;default;x86                                                     | 5            | Intel x86 Atom System Image
  system-images;android-10;google_apis;armeabi-v7a                                         | 6            | Google APIs ARM EABI v7a System Image
  system-images;android-10;google_apis;x86                                                 | 6            | Google APIs Intel x86 Atom System Image
  system-images;android-14;default;armeabi-v7a                                             | 2            | ARM EABI v7a System Image
  system-images;android-15;default;armeabi-v7a                                             | 5            | ARM EABI v7a System Image
  system-images;android-15;default;x86                                                     | 7            | Intel x86 Atom System Image
  system-images;android-15;google_apis;armeabi-v7a                                         | 6            | Google APIs ARM EABI v7a System Image
  system-images;android-15;google_apis;x86                                                 | 7            | Google APIs Intel x86 Atom System Image
  system-images;android-16;default;armeabi-v7a                                             | 6            | ARM EABI v7a System Image
  system-images;android-16;default;mips                                                    | 1            | MIPS System Image
  system-images;android-16;default;x86                                                     | 7            | Intel x86 Atom System Image
  system-images;android-16;google_apis;armeabi-v7a                                         | 6            | Google APIs ARM EABI v7a System Image
  system-images;android-16;google_apis;x86                                                 | 7            | Google APIs Intel x86 Atom System Image
  system-images;android-17;default;armeabi-v7a                                             | 6            | ARM EABI v7a System Image
  system-images;android-17;default;mips                                                    | 1            | MIPS System Image
  system-images;android-17;default;x86                                                     | 7            | Intel x86 Atom System Image
  system-images;android-17;google_apis;armeabi-v7a                                         | 6            | Google APIs ARM EABI v7a System Image
  system-images;android-17;google_apis;x86                                                 | 7            | Google APIs Intel x86 Atom System Image
  system-images;android-18;default;armeabi-v7a                                             | 5            | ARM EABI v7a System Image
  system-images;android-18;default;x86                                                     | 4            | Intel x86 Atom System Image
  system-images;android-18;google_apis;armeabi-v7a                                         | 6            | Google APIs ARM EABI v7a System Image
  system-images;android-18;google_apis;x86                                                 | 6            | Google APIs Intel x86 Atom System Image
  system-images;android-19;default;armeabi-v7a                                             | 5            | ARM EABI v7a System Image
  system-images;android-19;default;x86                                                     | 6            | Intel x86 Atom System Image
  system-images;android-19;google_apis;armeabi-v7a                                         | 40           | Google APIs ARM EABI v7a System Image
  system-images;android-19;google_apis;x86                                                 | 40           | Google APIs Intel x86 Atom System Image
  system-images;android-21;android-tv;armeabi-v7a                                          | 3            | Android TV ARM EABI v7a System Image
  system-images;android-21;android-tv;x86                                                  | 3            | Android TV Intel x86 Atom System Image
  system-images;android-21;default;armeabi-v7a                                             | 4            | ARM EABI v7a System Image
  system-images;android-21;default;x86                                                     | 5            | Intel x86 Atom System Image
  system-images;android-21;default;x86_64                                                  | 5            | Intel x86 Atom_64 System Image
  system-images;android-21;google_apis;armeabi-v7a                                         | 32           | Google APIs ARM EABI v7a System Image
  system-images;android-21;google_apis;x86                                                 | 32           | Google APIs Intel x86 Atom System Image
  system-images;android-21;google_apis;x86_64                                              | 32           | Google APIs Intel x86 Atom_64 System Image
  system-images;android-22;android-tv;x86                                                  | 3            | Android TV Intel x86 Atom System Image
  system-images;android-22;default;armeabi-v7a                                             | 2            | ARM EABI v7a System Image
  system-images;android-22;default;x86                                                     | 6            | Intel x86 Atom System Image
  system-images;android-22;default;x86_64                                                  | 6            | Intel x86 Atom_64 System Image
  system-images;android-22;google_apis;armeabi-v7a                                         | 26           | Google APIs ARM EABI v7a System Image
  system-images;android-22;google_apis;x86                                                 | 26           | Google APIs Intel x86 Atom System Image
  system-images;android-22;google_apis;x86_64                                              | 26           | Google APIs Intel x86 Atom_64 System Image
  system-images;android-23;android-tv;armeabi-v7a                                          | 12           | Android TV ARM EABI v7a System Image
  system-images;android-23;android-tv;x86                                                  | 21           | Android TV Intel x86 Atom System Image
  system-images;android-23;default;armeabi-v7a                                             | 6            | ARM EABI v7a System Image
  system-images;android-23;default;x86                                                     | 10           | Intel x86 Atom System Image
  system-images;android-23;default;x86_64                                                  | 10           | Intel x86 Atom_64 System Image
  system-images;android-23;google_apis;armeabi-v7a                                         | 33           | Google APIs ARM EABI v7a System Image
  system-images;android-23;google_apis;x86                                                 | 33           | Google APIs Intel x86 Atom System Image
  system-images;android-23;google_apis;x86_64                                              | 33           | Google APIs Intel x86 Atom_64 System Image
  system-images;android-24;android-tv;x86                                                  | 22           | Android TV Intel x86 Atom System Image
  system-images;android-24;default;arm64-v8a                                               | 7            | ARM 64 v8a System Image
  system-images;android-24;default;armeabi-v7a                                             | 7            | ARM EABI v7a System Image
  system-images;android-24;default;x86                                                     | 8            | Intel x86 Atom System Image
  system-images;android-24;default;x86_64                                                  | 8            | Intel x86 Atom_64 System Image
  system-images;android-24;google_apis;arm64-v8a                                           | 27           | Google APIs ARM 64 v8a System Image
  system-images;android-24;google_apis;x86                                                 | 27           | Google APIs Intel x86 Atom System Image
  system-images;android-24;google_apis;x86_64                                              | 27           | Google APIs Intel x86 Atom_64 System Image
  system-images;android-24;google_apis_playstore;x86                                       | 19           | Google Play Intel x86 Atom System Image
  system-images;android-25;android-tv;x86                                                  | 16           | Android TV Intel x86 Atom System Image
  system-images;android-25;android-wear-cn;armeabi-v7a                                     | 4            | China version of Android Wear ARM EABI v7a System Image
  system-images;android-25;android-wear-cn;x86                                             | 4            | China version of Android Wear Intel x86 Atom System Image
  system-images;android-25;android-wear;armeabi-v7a                                        | 3            | Android Wear ARM EABI v7a System Image
  system-images;android-25;android-wear;x86                                                | 3            | Android Wear Intel x86 Atom System Image
  system-images;android-25;default;x86                                                     | 1            | Intel x86 Atom System Image
  system-images;android-25;default;x86_64                                                  | 1            | Intel x86 Atom_64 System Image
  system-images;android-25;google_apis;arm64-v8a                                           | 18           | Google APIs ARM 64 v8a System Image
  system-images;android-25;google_apis;armeabi-v7a                                         | 18           | Google APIs ARM EABI v7a System Image
  system-images;android-25;google_apis;x86                                                 | 18           | Google APIs Intel x86 Atom System Image
  system-images;android-25;google_apis;x86_64                                              | 18           | Google APIs Intel x86 Atom_64 System Image
  system-images;android-25;google_apis_playstore;x86                                       | 9            | Google Play Intel x86 Atom System Image
  system-images;android-26;android-tv;x86                                                  | 14           | Android TV Intel x86 Atom System Image
  system-images;android-26;android-wear-cn;x86                                             | 4            | China version of Android Wear Intel x86 Atom System Image
  system-images;android-26;android-wear;x86                                                | 4            | Android Wear Intel x86 Atom System Image
  system-images;android-26;default;x86                                                     | 1            | Intel x86 Atom System Image
  system-images;android-26;default;x86_64                                                  | 1            | Intel x86 Atom_64 System Image
  system-images;android-26;google_apis;x86                                                 | 16           | Google APIs Intel x86 Atom System Image
  system-images;android-26;google_apis;x86_64                                              | 16           | Google APIs Intel x86 Atom_64 System Image
  system-images;android-26;google_apis_playstore;x86                                       | 7            | Google Play Intel x86 Atom System Image
  system-images;android-27;android-tv;x86                                                  | 9            | Android TV Intel x86 Atom System Image
  system-images;android-27;default;x86                                                     | 1            | Intel x86 Atom System Image
  system-images;android-27;default;x86_64                                                  | 1            | Intel x86 Atom_64 System Image
  system-images;android-27;google_apis;x86                                                 | 11           | Google APIs Intel x86 Atom System Image
  system-images;android-27;google_apis_playstore;x86                                       | 3            | Google Play Intel x86 Atom System Image
  system-images;android-28;android-tv;x86                                                  | 10           | Android TV Intel x86 Atom System Image
  system-images;android-28;android-wear-cn;x86                                             | 6            | China version of Wear OS Intel x86 Atom System Image
  system-images;android-28;android-wear;x86                                                | 6            | Wear OS Intel x86 Atom System Image
  system-images;android-28;default;arm64-v8a                                               | 1            | ARM 64 v8a System Image
  system-images;android-28;default;x86                                                     | 4            | Intel x86 Atom System Image
  system-images;android-28;default;x86_64                                                  | 4            | Intel x86 Atom_64 System Image
  system-images;android-28;google_apis;arm64-v8a                                           | 1            | Google APIs ARM 64 v8a System Image
  system-images;android-28;google_apis;x86                                                 | 12           | Google APIs Intel x86 Atom System Image
  system-images;android-28;google_apis;x86_64                                              | 11           | Google APIs Intel x86 Atom_64 System Image
  system-images;android-28;google_apis_playstore;arm64-v8a                                 | 1            | Google ARM64-V8a Play ARM 64 v8a System Image
  system-images;android-28;google_apis_playstore;x86                                       | 9            | Google Play Intel x86 Atom System Image
  system-images;android-28;google_apis_playstore;x86_64                                    | 8            | Google Play Intel x86 Atom_64 System Image
  system-images;android-29;android-tv;x86                                                  | 3            | Android TV Intel x86 Atom System Image
  system-images;android-29;default;arm64-v8a                                               | 8            | ARM 64 v8a System Image
  system-images;android-29;default;x86                                                     | 8            | Intel x86 Atom System Image
  system-images;android-29;default;x86_64                                                  | 8            | Intel x86 Atom_64 System Image
  system-images;android-29;google_apis;arm64-v8a                                           | 12           | Google APIs ARM 64 v8a System Image
  system-images;android-29;google_apis;x86                                                 | 12           | Google APIs Intel x86 Atom System Image
  system-images;android-29;google_apis;x86_64                                              | 12           | Google APIs Intel x86 Atom_64 System Image
  system-images;android-29;google_apis_playstore;arm64-v8a                                 | 9            | Google Play ARM 64 v8a System Image
  system-images;android-29;google_apis_playstore;x86                                       | 8            | Google Play Intel x86 Atom System Image
  system-images;android-29;google_apis_playstore;x86_64                                    | 8            | Google Play Intel x86 Atom_64 System Image
  system-images;android-30;android-tv;x86                                                  | 3            | Android TV Intel x86 Atom System Image
  system-images;android-30;android-wear-cn;x86                                             | 6            | China version of Wear OS 3 - Preview Intel x86 Atom System Image
  system-images;android-30;android-wear;x86                                                | 6            | Wear OS 3 - Preview Intel x86 Atom System Image
  system-images;android-30;default;arm64-v8a                                               | 1            | ARM 64 v8a System Image
  system-images;android-30;default;x86_64                                                  | 10           | Intel x86 Atom_64 System Image
  system-images;android-30;google-tv;x86                                                   | 3            | Google TV Intel x86 Atom System Image
  system-images;android-30;google_apis;arm64-v8a                                           | 11           | Google APIs ARM 64 v8a System Image
  system-images;android-30;google_apis;x86                                                 | 10           | Google APIs Intel x86 Atom System Image
  system-images;android-30;google_apis;x86_64                                              | 11           | Google APIs Intel x86 Atom_64 System Image
  system-images;android-30;google_apis_playstore;arm64-v8a                                 | 10           | Google Play ARM 64 v8a System Image
  system-images;android-30;google_apis_playstore;x86                                       | 9            | Google Play Intel x86 Atom System Image
  system-images;android-30;google_apis_playstore;x86_64                                    | 10           | Google Play Intel x86 Atom_64 System Image
  system-images;android-31;android-tv;x86                                                  | 3            | Android TV Intel x86 Atom System Image
  system-images;android-31;default;arm64-v8a                                               | 2            | ARM 64 v8a System Image
  system-images;android-31;default;x86_64                                                  | 2            | Intel x86 Atom_64 System Image
  system-images;android-31;google-tv;x86                                                   | 3            | Google TV Intel x86 Atom System Image
  system-images;android-31;google_apis;arm64-v8a                                           | 8            | Google APIs ARM 64 v8a System Image
  system-images;android-31;google_apis;x86_64                                              | 8            | Google APIs Intel x86 Atom_64 System Image
  system-images;android-31;google_apis_playstore;arm64-v8a                                 | 8            | Google Play ARM 64 v8a System Image
  system-images;android-31;google_apis_playstore;x86_64                                    | 8            | Google Play Intel x86 Atom_64 System Image
  system-images;android-32;google_apis;arm64-v8a                                           | 2            | Google APIs ARM 64 v8a System Image
  system-images;android-32;google_apis;x86_64                                              | 2            | Google APIs Intel x86 Atom_64 System Image
  system-images;android-32;google_apis_playstore;arm64-v8a                                 | 2            | Google Play ARM 64 v8a System Image
  system-images;android-32;google_apis_playstore;x86_64                                    | 2            | Google Play Intel x86 Atom_64 System Image
```

Install Tools
```
sdkmanager "platform-tools" "platforms;android-28
```

Install System Image
```
sdkmanager "system-images;android-R;google_apis_playstore;x86"
```

Avd List
```
avdmanager list device
emulator -list-avds
```

Create Avd
```
avdmanager create avd -n avdtest -k "system-images;android-R;google_apis_playstore;x86" -d "pixel"
```

Delete Avd
```
avdmanager delete avd -n avdtest
or
cd ~/.android/avd
rm -rf emulatorNameIWantToDelete.*
```

Start adb synchronously
```
emulator -avd avdtest -netdelay none -netspeed full
```

Start adb asynchronously
```
emulator -avd avdtest -no-snapshot -no-window -no-audio -no-boot-anim -camera-back none -camera-front none -qemu -m 2048 > /dev/null 2>&1 &
```

After starting avd wait terminal till avd boots
```
adb wait-for-device shell 'while [[ -z $(getprop sys.boot_completed | tr -d '\r') ]]; do sleep 1; done; input keyevent 82'
```

Kill emulator
```
adb -s emulator-5554 emu kill //where emulator-5544 - emulator name.
```

Mac
```
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
