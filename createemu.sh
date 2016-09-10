#!/bin/sh
rm -rf /home/denglin1021/.android/avd/$1.avd/
mkdir -p "/home/denglin1021/.android/avd/$1.avd"
echo "target=android-10" > "/home/denglin1021/.android/avd/$1.ini"
echo "path=/home/denglin1021/.android/avd/$1.avd" >> "/home/denglin1021/.android/avd/$1.ini"
cp -rf /home/denglin1021/dyno-droid/mudroid/app/dynodroidsetup/freshavd/emu.avd/* "/home/denglin1021/.android/avd/$1.avd"/
