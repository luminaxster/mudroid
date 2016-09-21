# get the project folders
find .  -name "AndroidManifest.xml" | grep -v bin | sed -e "s/\/AndroidManifest\.xml//g" > projectFolders.txt
cat projectFolders.txt

# get the package names
cat projectFolders.txt | while read a; do grep -e "package=" "$a/AndroidManifest.xml" | sed -e "s/.*package=\"\(.*\)\".*/\1/"; done > packagesNames.txt
cat packagesNames.txt

# get the apks
cat projectFolders.txt | while read a; do find "$a" -name "*.apk" | grep -e instrumented | grep -v unaligned; done > apkFiles.txt
cat apkFiles.txt

# copy apks to apks folder in current folder
rm -rf apks/ 2 > /dev/null 3 > /dev/null 
mkdir apks
cat apkFiles.txt | while read apk; do apkfolder= echo $apk | sed -e "s/-instrumented\.apk//" ; cp --parents "$apk" "./apks/$apkfolder" ; done


#configure avd

# extract snapshot

# start avd from snapshot disable save to snapshot

# get logcat

# check when up

# check

# get running avd names
adb devices | grep -v List | sed -e "s/\(.*\)\tdevice/\1/"

# run monkey
adb -s shell monkey