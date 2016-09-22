#!/bin/bash
total_batches=40
current_batch=$(ls | grep appsDoneBatch_ | wc -l)
echo "Results of $current_batch batches out of $total_batches"

echo "Completed projects total:"
find . -name "*CompleteTestProfile.log" | grep CompletedRuns > CompleteTestProfileLogPaths.txt
cat CompleteTestProfileLogPaths.txt | wc -l

echo "Completed projects without results total:"
find . -name "*CompleteTestProfile.log" | grep CompletedRuns  | while read log; do found=$(cat "$log" | grep -m1 "ERROR:Build Ussucessfull\|INFO:Preparation UnSucessfull\|INFO:Preparation Sucessfull"); echo "$log $found" | grep -v "ERROR:Build Ussucessfull\|INFO:Preparation UnSucessfull\|INFO:Preparation Sucessfull"; done > ProjectsWithoutResults.txt
cat ProjectsWithoutResults.txt | wc -l
echo "Check ProjectsWithoutResults.txt"

echo "Completed project tests total:"
find . -name "*CompleteTestProfile.log" | grep CompletedRuns  | while read log; do cat "$log" |grep -m1 "ERROR:Build Ussucessfull\|INFO:Preparation UnSucessfull\|INFO:Preparation Sucessfull"; done | wc -l

echo "Failed to Test(not built or not prepared)  projects total:"
find . -name "*CompleteTestProfile.log" | grep CompletedRuns  | while read log; do cat "$log" |grep -m1 "ERROR:Build Ussucessfull\|INFO:Preparation UnSucessfull"; done | wc -l

echo "check FailedToTestProjects.txt"
find . -name "*CompleteTestProfile.log" | grep CompletedRuns  | while read log; do cat "$log" |grep -m1 "ERROR:Build Ussucessfull\|INFO:Preparation UnSucessfull" && (echo "$log"| sed -e "s/\(.*Batch_.*\)\/workingDir\/CompletedRuns\/\(.*\)_WBT.*/At project: \"\1\/\2\"/"); done > FailedToTestProjects.txt

echo "Evaluated projects total:"
find . -name "*CompleteTestProfile.log" | grep CompletedRuns  | while read log; do cat "$log" |grep -m1 "INFO:Preparation Sucessfull"; done | wc -l


#find . -name "*GenerelLogCatLogs.log" | grep CompletedRuns | wc -l

echo "Crashed projects total:"
find . -name "*GenerelLogCatLogs.log" | grep CompletedRuns  | while read log; do cat "$log" |grep -m1 "Crash of app"; done | wc -l


echo "check CrashedProjects.txt"
find . -name "*GenerelLogCatLogs.log" | grep CompletedRuns  | while read log; do cat "$log" |grep -m1 "Crash of app" && (echo "$log"| sed -e "s/\(.*Batch_.*\)\/workingDir\/CompletedRuns\/\(.*\)_WBT.*/\1\/\2/"); done > CrashedProjects.txt

#cat CrashedProjects.txt


