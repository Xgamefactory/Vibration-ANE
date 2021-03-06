#!/bin/sh

rm -r ios_dependencies/device
rm -r ios_dependencies/simulator

wget https://github.com/tuarua/Swift-IOS-ANE/releases/download/2.4.0/ios_dependencies.zip
unzip -u -o ios_dependencies.zip
rm ios_dependencies.zip

wget https://github.com/tuarua/Vibration-ANE/releases/download/0.0.4/ios_dependencies.zip
unzip -u -o ios_dependencies.zip
rm ios_dependencies.zip

wget -O ../native_extension/ane/VibrationANE.ane https://github.com/tuarua/Vibration-ANE/releases/download/0.0.4/VibrationANE.ane?raw=true
