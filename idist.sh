#!/bin/sh -x -e
APPNAME=`grep "<name>" config.xml | sed "s/.*<name>\(.*\)<\/name>.*/\1/"`

security unlock-keychain -p h login.keychain
cordova build --release --device ios
mv "platforms/ios/build/device/$APPNAME.ipa" $(pwd)
