#!/bin/sh
APP=platforms/android/build/outputs/apk/android-release-unsigned.apk
cordova build --release --device android
jarsigner -verbose -sigalg SHA1withRSA -digestalg SHA1 -keystore cert/spatnaNavigace.keystore -storepass Grafiko154 $APP spatnaNavigacedomu
#jarsigner -verify -verbose -certs $APP
rm -f release.apk
$ANDROID_HOME/build-tools/26.0.2/zipalign -v 4 $APP release.apk
