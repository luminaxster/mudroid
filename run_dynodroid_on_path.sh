#1/bin/bash
#rm -rf ~/.android/avd/
path=$1
cd "$1"
rm -rf workingDir
echo "Dynodroid run started at "$(date "+%Y.%m.%d-%H:%M:%S") > dynoDroidRun$(date "+%Y.%m.%d-%H:%M:44").log
xterm -hold -e tail -f  dynoDroidRun$(date "+%Y.%m.%d-%H:%M:44").log &
ant run 1 >> dynoDroidRun$(date "+%Y.%m.%d-%H:%M:44").log 2 >> dynoDroidRun$(date "+%Y.%m.%d-%H:%M:44").log
