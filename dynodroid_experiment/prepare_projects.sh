#!/bin/bash
echo "proof for unnecessary dependencies"

find . -name "*.java"| while read prop; do cat "$prop" | grep "import.*ompact" && echo "$prop"; done
echo "remove project erros"

find . -name "project.properties"| while read prop; do cat "$prop" | grep reference && echo "$prop" && cp "$prop" "$prop.bu" && sed -i "s/android.library.reference.*//" "$prop"; done


find . -name "local.properties"| while read prop; do cat "$prop" | grep -m1 sdk.dir && cp "$prop" "$prop.bu" && sed -i "s/sdk\.dir=.*/sdk\.dir=\/home\/denglin1021\/dyno-droid\/sdk_install\/android-sdk-linux/" "$prop"; done

find . -name "local.properties"| while read prop; do cat "$prop" | grep -m1 ndk.dir && cp "$prop" "$prop.bu" && sed -i "s/ndk\.dir/#ndk\.dir/" "$prop"; done


# res folder allows no bu files
find . -name "*.bu"| grep string |while read prop; do rm "$prop" && echo "removing $prop"; done


#find package, and create and clean project"
find . -name "AndroidManifest.xml" | while read xml; do cat "$xml"| grep -m1 "android:targetSdkVersion" && echo "At: \"$xml\"" && cp "$xml" "$xml.bu" && sed -i "s/android:targetSdkVersion=\".*\"/android:targetSdkVersion=\"10\"/g" "$xml"; done



$ find . -name "AndroidManifest.xml"| grep -v bin |while read xml; do path=$(echo "$xml"| sed -e "s/AndroidManifest.xml//"); echo "BUILDING \"$path\"" && android update project -p "$path" && ant clean -f "$path" && echo "BUILD DEBUG" && ant debug -f "$path"; done > prepare_projects.log 2>>&1 


tail -f prepare_projects.log | grep BUILD

echo -n "projects attempted total: " && find . -name "AndroidManifest.xml"|grep -v bin |wc -l
echo -n "built apks total: " && find . -name "*debug.apk" | grep bin |wc -l

echo "copying the apks"
mkdir apks

find . -name "*debug.apk" | grep bin | while read apk; do path=$(echo "$apk"| sed -e "s/appsPending/apks/" | sed -e "s/\/bin\/.*//" ); mkdir "$path"; cp "$apk" "$path"; done

echo -n "Moved apks total: " && find apks -name "*.apk" | wc -l




