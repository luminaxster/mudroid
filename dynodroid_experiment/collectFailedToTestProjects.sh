#!/bin/bash
dest=${1:-"second_run"}

if [ -d "$dest" ]; then
 echo "Destination \"$dest\" already exists. Please provide a path that does not exists. Exiting";
 exit 1;
fi
mkdir -p "$dest"
echo "Moving failed to test projects to \"$dest\"";
cat  FailedToTestProjects.txt | grep -v "ERROR\|Preparation " | sed -e "s/.*\"\(.*\)\"/\1/"| while read project; do mv "$project" "$dest"; done

echo "Done."
exit 0;

