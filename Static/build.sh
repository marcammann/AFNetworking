#!/bin/bash
set -ex
INSTALL_PATH=$WORKSPACE/artifacts
[ -z $INSTALL_PATH ] || INSTALL_PATH=$PWD/artifacts
rm -rf $INSTALL_PATH
PROJ=AFNetworking/AFNetworking.xcodeproj
xcodebuild -project $PROJ -sdk iphoneos INSTALL_ROOT=$INSTALL_PATH/device install
xcodebuild -project $PROJ -sdk iphonesimulator INSTALL_ROOT=$INSTALL_PATH/simulator install
mv $INSTALL_PATH/device/Headers $INSTALL_PATH
rm -rf $INSTALL_PATH/device $INSTALL_PATH/simulator
(cd $INSTALL_PATH; zip -r ../AFNetworking.zip libAFNetworking.a Headers)

