#!/bin/bash

echo "Running batch 20"
ant run
ls apps | while read project; do mv "apps/$project" appsDoneBatch_20; done
mv workingDir appsDoneBatch_20
echo "Running batch 21"
mkdir appsDoneBatch_21
ls appsPending | head -n 10 | while read project; do mv "appsPending/$project" apps; done
ant run
ls apps | while read project; do mv "apps/$project" appsDoneBatch_21; done
mv workingDir appsDoneBatch_21
echo "Running batch 22"
mkdir appsDoneBatch_22
ls appsPending | head -n 10 | while read project; do mv "appsPending/$project" apps; done
ant run
ls apps | while read project; do mv "apps/$project" appsDoneBatch_22; done
mv workingDir appsDoneBatch_22
echo "Running batch 23"
mkdir appsDoneBatch_23
ls appsPending | head -n 10 | while read project; do mv "appsPending/$project" apps; done
ant run
ls apps | while read project; do mv "apps/$project" appsDoneBatch_23; done
mv workingDir appsDoneBatch_23
echo "Running batch 24"
mkdir appsDoneBatch_24
ls appsPending | head -n 10 | while read project; do mv "appsPending/$project" apps; done
ant run
ls apps | while read project; do mv "apps/$project" appsDoneBatch_24; done
mv workingDir appsDoneBatch_24
echo "Running batch 25"
mkdir appsDoneBatch_25
ls appsPending | head -n 10 | while read project; do mv "appsPending/$project" apps; done
ant run
ls apps | while read project; do mv "apps/$project" appsDoneBatch_25; done
mv workingDir appsDoneBatch_25
echo "Running batch 26"
mkdir appsDoneBatch_26
ls appsPending | head -n 10 | while read project; do mv "appsPending/$project" apps; done
ant run
ls apps | while read project; do mv "apps/$project" appsDoneBatch_26; done
mv workingDir appsDoneBatch_26
echo "Running batch 27"
mkdir appsDoneBatch_27
ls appsPending | head -n 10 | while read project; do mv "appsPending/$project" apps; done
ant run
ls apps | while read project; do mv "apps/$project" appsDoneBatch_27; done
mv workingDir appsDoneBatch_27
echo "Running batch 28"
mkdir appsDoneBatch_28
ls appsPending | head -n 10 | while read project; do mv "appsPending/$project" apps; done
ant run
ls apps | while read project; do mv "apps/$project" appsDoneBatch_28; done
mv workingDir appsDoneBatch_28
echo "Running batch 29"
mkdir appsDoneBatch_29
ls appsPending | head -n 10 | while read project; do mv "appsPending/$project" apps; done
ant run
ls apps | while read project; do mv "apps/$project" appsDoneBatch_29; done
mv workingDir appsDoneBatch_29
echo "Running batch 30"
mkdir appsDoneBatch_30
ls appsPending | head -n 10 | while read project; do mv "appsPending/$project" apps; done
ant run
ls apps | while read project; do mv "apps/$project" appsDoneBatch_30; done
mv workingDir appsDoneBatch_30
echo "Running batch 31"
mkdir appsDoneBatch_31
ls appsPending | head -n 10 | while read project; do mv "appsPending/$project" apps; done
ant run
ls apps | while read project; do mv "apps/$project" appsDoneBatch_31; done
mv workingDir appsDoneBatch_31
echo "Running batch 32"
mkdir appsDoneBatch_32
ls appsPending | head -n 10 | while read project; do mv "appsPending/$project" apps; done
ant run
ls apps | while read project; do mv "apps/$project" appsDoneBatch_32; done
mv workingDir appsDoneBatch_32
echo "Running batch 33"
mkdir appsDoneBatch_33
ls appsPending | head -n 10 | while read project; do mv "appsPending/$project" apps; done
ant run
ls apps | while read project; do mv "apps/$project" appsDoneBatch_33; done
mv workingDir appsDoneBatch_33
echo "Running batch 34"
mkdir appsDoneBatch_34
ls appsPending | head -n 10 | while read project; do mv "appsPending/$project" apps; done
ant run
ls apps | while read project; do mv "apps/$project" appsDoneBatch_34; done
mv workingDir appsDoneBatch_34
echo "Running batch 35"
mkdir appsDoneBatch_35
ls appsPending | head -n 10 | while read project; do mv "appsPending/$project" apps; done
ant run
ls apps | while read project; do mv "apps/$project" appsDoneBatch_35; done
mv workingDir appsDoneBatch_35
echo "Running batch 36"
mkdir appsDoneBatch_36
ls appsPending | head -n 10 | while read project; do mv "appsPending/$project" apps; done
ant run
ls apps | while read project; do mv "apps/$project" appsDoneBatch_36; done
mv workingDir appsDoneBatch_36
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
#done
