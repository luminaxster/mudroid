#!/bin/bash
# requires app_list.txt
total_batches=40
if [ -d "per_app_report" ];
then
 echo "per_app_report folder exists"
else
 echo "creating per_app_report folder"
 mkdir "per_app_report"
fi;
  
current_batch=$(ls | grep appsDoneBatch_ | wc -l)
echo "Results of $current_batch batches out of $total_batches"

cat app_list.txt | grep -v "^#" | while read app;
do
echo "Report for app $app:"
echo "Completed projects total:"
find . -name "*CompleteTestProfile.log" | grep "$app" | grep CompletedRuns > "per_app_report/CompleteTestProfileLogPaths.$app.txt"
cat "per_app_report/CompleteTestProfileLogPaths.$app.txt" | wc -l

echo "Completed projects without results total:"
find . -name "*CompleteTestProfile.log" | grep "$app" | grep CompletedRuns  | while read log; do found=$(cat "$log" | grep -m1 "ERROR:Build Ussucessfull\|INFO:Preparation UnSucessfull\|INFO:Preparation Sucessfull"); echo "$log $found" | grep -v "ERROR:Build Ussucessfull\|INFO:Preparation UnSucessfull\|INFO:Preparation Sucessfull"; done > "per_app_report/ProjectsWithoutResults.$app.txt"
cat "per_app_report/ProjectsWithoutResults.$app.txt" | wc -l
echo "Check \"per_app_report/ProjectsWithoutResults.$app.txt\""

echo "Completed project tests total:"
find . -name "*CompleteTestProfile.log" | grep "$app" | grep CompletedRuns  | while read log; do cat "$log" |grep -m1 "ERROR:Build Ussucessfull\|INFO:Preparation UnSucessfull\|INFO:Preparation Sucessfull"; done | wc -l

echo "Failed to Test(not built or not prepared)  projects total:"
find . -name "*CompleteTestProfile.log" | grep "$app" | grep CompletedRuns  | while read log; do cat "$log" |grep -m1 "ERROR:Build Ussucessfull\|INFO:Preparation UnSucessfull"; done | wc -l

echo "check \"per_app_report/FailedToTestProjects.$app.txt\""
find . -name "*CompleteTestProfile.log" | grep "$app" | grep CompletedRuns  | while read log; do cat "$log" |grep -m1 "ERROR:Build Ussucessfull\|INFO:Preparation UnSucessfull" && (echo "$log"| sed -e "s/\(.*Batch_.*\)\/workingDir\/CompletedRuns\/\(.*\)_WBT.*/At project: \"\1\/\2\"/"); done > "per_app_report/FailedToTestProjects.$app.txt"

echo "Evaluated projects total:"
find . -name "*CompleteTestProfile.log" | grep "$app" | grep CompletedRuns  | while read log; do cat "$log" |grep -m1 "INFO:Preparation Sucessfull"; done | wc -l


#find . -name "*GenerelLogCatLogs.log" | grep "$app" | grep CompletedRuns | wc -l

echo "Crashed projects total:"
find . -name "*GenerelLogCatLogs.log" | grep "$app" | grep CompletedRuns  | while read log; do cat "$log" |grep -m1 "Crash of app"; done | wc -l


echo "check \"per_app_report/CrashedProjects.$app.txt\""
find . -name "*GenerelLogCatLogs.log" | grep "$app" | grep CompletedRuns  | while read log; do cat "$log" |grep -m1 "Crash of app" && (echo "$log"| sed -e "s/\(.*Batch_.*\)\/workingDir\/CompletedRuns\/\(.*\)_WBT.*/\1\/\2/"); done > "per_app_report/CrashedProjects.$app.txt"

done
#cat "CrashedProjects.$app.txt"


