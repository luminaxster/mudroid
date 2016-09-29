#!/bin/bash
#appsPending is where to start
rm -rf workingDir/
total_projects=$(ls appsPending | wc -l)
batch_total=$((total_projects/10))
batch_total=$((batch_total+1))
echo "echo \"$total_projects projects will run in $batch_total batches\"" > batch_runner.sh

current_batch=1
while test $current_batch -le $batch_total;
do
 echo "echo \"Running batch $current_batch\"">> batch_runner.sh
 echo "mkdir appsDoneBatch_$current_batch">> batch_runner.sh
 echo "ls appsPending | head -n 10 | while read project; do mv \"appsPending/\$project\" apps; done">> batch_runner.sh
 echo "ant run" >> batch_runner.sh
 echo "ls apps | while read project; do mv \"apps/\$project\" appsDoneBatch_$current_batch; done">> batch_runner.sh
 echo "mv workingDir appsDoneBatch_$current_batch">> batch_runner.sh
 echo "curl -X POST http://textbelt.com/text -d number=5403132647  -d \"message=Done with Dynodroid batch $current_batch of $batch_total\"">> batch_runner.sh

 current_batch=$((current_batch+1))

done;

echo "#done" >> batch_runner.sh
chmod u+x batch_runner.sh
