#!/bin/bash
#echo "Creating .bu backup and changing min sdk to 10 in original"
find . -name "AndroidManifest.xml" | while read xml; do cat "$xml"| grep -m1 "android:targetSdkVersion" && echo "At: \"$xml\"" && cp "$xml" "$xml.bu" && sed -i "s/android:targetSdkVersion=\".*\"/android:targetSdkVersion=\"10\"/g" "$xml"; done
