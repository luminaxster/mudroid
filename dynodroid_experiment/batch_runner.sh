echo "153 projects will run in 16 batches"
echo "Running batch 1"
mkdir appsDoneBatch_1
ls appsPending | head -n 10 | while read project; do mv "appsPending/$project" apps; done
ant run
ls apps | while read project; do mv "apps/$project" appsDoneBatch_1; done
mv workingDir appsDoneBatch_1
curl -X POST http://textbelt.com/text -d number=5403132647  -d "message=Done with Dynodroid batch 1 of 16"
echo "Running batch 2"
mkdir appsDoneBatch_2
ls appsPending | head -n 10 | while read project; do mv "appsPending/$project" apps; done
ant run
ls apps | while read project; do mv "apps/$project" appsDoneBatch_2; done
mv workingDir appsDoneBatch_2
curl -X POST http://textbelt.com/text -d number=5403132647  -d "message=Done with Dynodroid batch 2 of 16"
echo "Running batch 3"
mkdir appsDoneBatch_3
ls appsPending | head -n 10 | while read project; do mv "appsPending/$project" apps; done
ant run
ls apps | while read project; do mv "apps/$project" appsDoneBatch_3; done
mv workingDir appsDoneBatch_3
curl -X POST http://textbelt.com/text -d number=5403132647  -d "message=Done with Dynodroid batch 3 of 16"
echo "Running batch 4"
mkdir appsDoneBatch_4
ls appsPending | head -n 10 | while read project; do mv "appsPending/$project" apps; done
ant run
ls apps | while read project; do mv "apps/$project" appsDoneBatch_4; done
mv workingDir appsDoneBatch_4
curl -X POST http://textbelt.com/text -d number=5403132647  -d "message=Done with Dynodroid batch 4 of 16"
echo "Running batch 5"
mkdir appsDoneBatch_5
ls appsPending | head -n 10 | while read project; do mv "appsPending/$project" apps; done
ant run
ls apps | while read project; do mv "apps/$project" appsDoneBatch_5; done
mv workingDir appsDoneBatch_5
curl -X POST http://textbelt.com/text -d number=5403132647  -d "message=Done with Dynodroid batch 5 of 16"
echo "Running batch 6"
mkdir appsDoneBatch_6
ls appsPending | head -n 10 | while read project; do mv "appsPending/$project" apps; done
ant run
ls apps | while read project; do mv "apps/$project" appsDoneBatch_6; done
mv workingDir appsDoneBatch_6
curl -X POST http://textbelt.com/text -d number=5403132647  -d "message=Done with Dynodroid batch 6 of 16"
echo "Running batch 7"
mkdir appsDoneBatch_7
ls appsPending | head -n 10 | while read project; do mv "appsPending/$project" apps; done
ant run
ls apps | while read project; do mv "apps/$project" appsDoneBatch_7; done
mv workingDir appsDoneBatch_7
curl -X POST http://textbelt.com/text -d number=5403132647  -d "message=Done with Dynodroid batch 7 of 16"
echo "Running batch 8"
mkdir appsDoneBatch_8
ls appsPending | head -n 10 | while read project; do mv "appsPending/$project" apps; done
ant run
ls apps | while read project; do mv "apps/$project" appsDoneBatch_8; done
mv workingDir appsDoneBatch_8
curl -X POST http://textbelt.com/text -d number=5403132647  -d "message=Done with Dynodroid batch 8 of 16"
echo "Running batch 9"
mkdir appsDoneBatch_9
ls appsPending | head -n 10 | while read project; do mv "appsPending/$project" apps; done
ant run
ls apps | while read project; do mv "apps/$project" appsDoneBatch_9; done
mv workingDir appsDoneBatch_9
curl -X POST http://textbelt.com/text -d number=5403132647  -d "message=Done with Dynodroid batch 9 of 16"
echo "Running batch 10"
mkdir appsDoneBatch_10
ls appsPending | head -n 10 | while read project; do mv "appsPending/$project" apps; done
ant run
ls apps | while read project; do mv "apps/$project" appsDoneBatch_10; done
mv workingDir appsDoneBatch_10
curl -X POST http://textbelt.com/text -d number=5403132647  -d "message=Done with Dynodroid batch 10 of 16"
echo "Running batch 11"
mkdir appsDoneBatch_11
ls appsPending | head -n 10 | while read project; do mv "appsPending/$project" apps; done
ant run
ls apps | while read project; do mv "apps/$project" appsDoneBatch_11; done
mv workingDir appsDoneBatch_11
curl -X POST http://textbelt.com/text -d number=5403132647  -d "message=Done with Dynodroid batch 11 of 16"
echo "Running batch 12"
mkdir appsDoneBatch_12
ls appsPending | head -n 10 | while read project; do mv "appsPending/$project" apps; done
ant run
ls apps | while read project; do mv "apps/$project" appsDoneBatch_12; done
mv workingDir appsDoneBatch_12
curl -X POST http://textbelt.com/text -d number=5403132647  -d "message=Done with Dynodroid batch 12 of 16"
echo "Running batch 13"
mkdir appsDoneBatch_13
ls appsPending | head -n 10 | while read project; do mv "appsPending/$project" apps; done
ant run
ls apps | while read project; do mv "apps/$project" appsDoneBatch_13; done
mv workingDir appsDoneBatch_13
curl -X POST http://textbelt.com/text -d number=5403132647  -d "message=Done with Dynodroid batch 13 of 16"
echo "Running batch 14"
mkdir appsDoneBatch_14
ls appsPending | head -n 10 | while read project; do mv "appsPending/$project" apps; done
ant run
ls apps | while read project; do mv "apps/$project" appsDoneBatch_14; done
mv workingDir appsDoneBatch_14
curl -X POST http://textbelt.com/text -d number=5403132647  -d "message=Done with Dynodroid batch 14 of 16"
echo "Running batch 15"
mkdir appsDoneBatch_15
ls appsPending | head -n 10 | while read project; do mv "appsPending/$project" apps; done
ant run
ls apps | while read project; do mv "apps/$project" appsDoneBatch_15; done
mv workingDir appsDoneBatch_15
curl -X POST http://textbelt.com/text -d number=5403132647  -d "message=Done with Dynodroid batch 15 of 16"
echo "Running batch 16"
mkdir appsDoneBatch_16
ls appsPending | head -n 10 | while read project; do mv "appsPending/$project" apps; done
ant run
ls apps | while read project; do mv "apps/$project" appsDoneBatch_16; done
mv workingDir appsDoneBatch_16
curl -X POST http://textbelt.com/text -d number=5403132647  -d "message=Done with Dynodroid batch 16 of 16"
#done
