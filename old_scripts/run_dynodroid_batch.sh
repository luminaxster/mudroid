#!/bin/bash
#appsPending is where to start
rm -rf workingDir/

mkdir appsDoneBatch1
ls appsPending | tail -n 10 | while read project; do mv "appsPending/$project" apps; done

ant run

ls apps | while read project; do mv "apps/$project" appsDoneBatch1; done
mv workingDir appsDoneBatch1
 
mkdir appsDoneBatch2
ls appsPending | tail -n 10 | while read project; do mv "appsPending/$project" apps; done

ant run

ls apps | while read project; do mv "apps/$project" appsDoneBatch2; done
mv workingDir appsDoneBatch2
 
mkdir appsDoneBatch3
ls appsPending | tail -n 10 | while read project; do mv "appsPending/$project" apps; done

ant run

ls apps | while read project; do mv "apps/$project" appsDoneBatch3; done
mv workingDir appsDoneBatch3

 
mkdir appsDoneBatch4
ls appsPending | tail -n 10 | while read project; do mv "appsPending/$project" apps; done

ant run

ls apps | while read project; do mv "apps/$project" appsDoneBatch4; done
mv workingDir appsDoneBatch4

 
mkdir appsDoneBatch5
ls appsPending | tail -n 10 | while read project; do mv "appsPending/$project" apps; done

ant run

ls apps | while read project; do mv "apps/$project" appsDoneBatch5; done
mv workingDir appsDoneBatch6

 
mkdir appsDoneBatch1
ls appsPending | tail -n 10 | while read project; do mv "appsPending/$project" apps; done

ant run

ls apps | while read project; do mv "apps/$project" appsDoneBatch6; done
mv workingDir appsDoneBatch6

 
mkdir appsDoneBatch7
ls appsPending | tail -n 10 | while read project; do mv "appsPending/$project" apps; done

ant run

ls apps | while read project; do mv "apps/$project" appsDoneBatch7; done
mv workingDir appsDoneBatch7



