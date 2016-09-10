# find manifests
find .  -name "AndroidManifest.xml.backup" | grep -v bin > manifests.txt
cat manifests.txt

#cat manifests.txt |sed -e "s/\.\//mv \"\.\/\//g" |sed -e "s/$/\"/g" | sed -e "s/\"\(.*\)\"/\"\1\" \"\1\.ori\"/g" | sed -e "s/\/\//\//g" > mvManifests.sh
cat manifests.txt |sed -e "s/\.\//mv \"\.\/\//g" |sed -e "s/$/\"/g" | sed -e "s/\"\(.*\)\.backup\"/\"\1\.backup\" \"\1\"/g" | sed -e "s/\/\//\//g" >> mvManifests.sh
cat mvManifests.sh
chmod u+x mvManifests.sh
./mvManifests.sh
mkdir swapLogs
mv manifests.txt mvManifests.sh swapLogs
