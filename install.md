# Installing Saber

Saber supports the following platforms:

## Android
[Via F-Droid](https://f-droid.org/packages/com.adilhanney.saber/)

[Via Google Play Store](https://play.google.com/store/apps/details?id=com.adilhanney.saber)

If you own any of the Onyx devices, it is advised to use the Google Play release, or grabbing `Saber{ver}.apk`

If that isn't the case, you can use the F-Droid build as well, or grab the `Saber_FOSS{ver}.apk`

## iOS/MacOS
[Via Apple App Store](https://apps.apple.com/us/app/saber/id1671523739)

## Linux
There are a few ways to install Saber on Linux, they are as follows:

1. [Via Flathub](https://flathub.org/apps/com.adilhanney.saber) `flatpak install flathub com.adilhanney.saber`. [Ensure you have Flathub correctly setup](https://flatpak.org/setup/)
2. [Via AppImage](https://github.com/adil192/saber/releases) and make it executable by running `chmod +x Saber-*-x86_64.AppImage`
3. [Via Snap](https://snapcraft.io/saber) This is an unofficial package, made by the community, Please open any issues related to snap [here](https://github.com/soumyaDghosh/saber)

## Windows
[Via provided .exe](https://github.com/adil192/saber/releases)

If you encounter errors where Saber complains about missing DLLs, Ensure you have Visual C++ Redistributable installed 

## Building From Source
You can choose to install Saber by compiling it by yourself, please familiarise yourself with the standard flutter installation instructions [here](https://docs.flutter.dev/get-started/install)

The standard procedure for building Saber for any platform is as follows:

1. Clone the repo `$ git clone https://github.com/adil192/saber.git`
2. Change your directory into the project `$ cd saber`
2. Get dependencies `$ flutter pub get`

If you wish to use the optional clipboard support:

3. Install [super_clipboard](https://pub.dev/packages/super_clipboard/install)` $ flutter pub add super_clipboard`

### For Android
To build the package:
`$ flutter build apk`

If you wish to sign the APK, please refer [this](https://docs.flutter.dev/deployment/android#create-an-upload-keystore)

### For iOS
`$ flutter build ipa`

### For MacOS
`$ flutter build macos`

### For Linux
Find the equivalent packages for your distro for `libsecret-1-dev` and `libjsoncpp-dev`. These packages are from Debian

Then `$ flutter build linux`

### For Windows
`$ flutter build windows`
