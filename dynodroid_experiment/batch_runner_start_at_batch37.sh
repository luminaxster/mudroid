#!/bin/bash

echo "Running batch 37"
mkdir appsDoneBatch_37
ls appsPending | head -n 10 | while read project; do mv "appsPending/$project" apps; done
ant run
ls apps | while read project; do mv "apps/$project" appsDoneBatch_37; done
mv workingDir appsDoneBatch_37
echo "Running batch 38"
mkdir appsDoneBatch_38
ls appsPending | head -n 10 | while read project; do mv "appsPending/$project" apps; done
ant run
ls apps | while read project; do mv "apps/$project" appsDoneBatch_38; done
mv workingDir appsDoneBatch_38
echo "Running batch 39"
mkdir appsDoneBatch_39
ls appsPending | head -n 10 | while read project; do mv "appsPending/$project" apps; done
ant run
ls apps | while read project; do mv "apps/$project" appsDoneBatch_39; done
mv workingDir appsDoneBatch_39
echo "Running batch 40"
mkdir appsDoneBatch_40
ls appsPending | head -n 10 | while read project; do mv "appsPending/$project" apps; done
ant run
ls apps | while read project; do mv "apps/$project" appsDoneBatch_40; done
mv workingDir appsDoneBatch_40

curl -X POST http://textbelt.com/text -d number=5403132647  -d "message=Done with Dynodroid"
#done