# change your directory to the root where all the apps are

# find project folders
find .  -name "AndroidManifest.xml" | grep -v bin | sed -e "s/\/AndroidManifest\.xml//g" >> appFolders.txt
cat appFolders.txt

# make new destination folders
cat appFolders.txt | sed -e "s/\//_/g" |sed -e "s/\._/mkdir -p \"seededFaults\//g" |sed -e "s/$/\"/g" > mkDirBatch.sh 
cat mkDirBatch.sh
chmod u+x mkDirBatch.sh
./mkDirBatch.sh

# initiate move command for project folders to seededFaults folder
cat appFolders.txt| sed -e "s/\.\//mv \"\.\//g" |sed -e "s/$/\/\"/g" > mvFiles.txt 
cat mvFiles.txt

# complete command for ..
cat mvFiles.txt |while read a; do echo  $a $(echo "$a" |sed -e "s/\//_/g"|sed -e "s/mv \"\./ \"seededFaults\//g"| sed -e "s/\/_/\//g" ); done | sed -e "s/\" mv/\" /g" | sed -e "s/_\"/\/\"/g"> mvFiles.sh 
cat mvFiles.sh
chmod u+x mvFiles.sh
./mvFiles.sh

# mv content to parent
find .  -name "AndroidManifest.xml" | grep -v bin | sed -e "s/\/AndroidManifest\.xml//g" |sed -e "s/\.\//mv \"\.\/\//g" |sed -e "s/$/\"/g" | sed -e "s/\"\(.*\)\"/\"\1\"\/\* \"\1\/\\.\.\/\"/g" | sed -e "s/\/\//\//g"  >> fixFolders.sh
cat fixFolders.sh
# and hidden files
find .  -name "AndroidManifest.xml" | grep -v bin | sed -e "s/\/AndroidManifest\.xml//g" |sed -e "s/\.\//mv \"\.\/\//g" |sed -e "s/$/\"/g" | sed -e "s/\"\(.*\)\"/\"\1\"\/\.\* \"\1\/\\.\.\/\"/g" | sed -e "s/\/\//\//g"  >> fixHiddenFolders.sh
cat fixHiddenFolders.sh

# delete empty folders
find .  -name "AndroidManifest.xml" | grep -v bin | sed -e "s/\/AndroidManifest\.xml//g" |sed -e "s/\.\//mv \"\.\/\//g" |sed -e "s/$/\"/g" | sed -e "s/\/\//\//g" | sed -e "s/mv/rmdir/g" >> rmOldFolders.sh
cat rmOldFolders.sh

chmod u+x fixFolders.sh
chmod u+x fixHiddenFolders.sh
chmod u+x rmOldFolders.sh

./fixFolders.sh
./fixHiddenFolders.sh
./rmOldFolders.sh

mkdir formatLog
mv appFolders.txt mkDirBatch.sh mvFiles.txt fixFolders.sh fixHiddenFolders.sh rmOldFolders.sh formatLog
