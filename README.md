# mudroid

##Configuration
### Install Java 5+
###Install Python 2.7+
###Download Android SDK and setup SDK_INSTALL( and SDK_INSTALL/tools) and add the to PATH in ~/.bashrc
##App compilation
```shell
python dynodroidsetup.py . <OUTPUT_FOLDER>
```
##Execution
```shell
ant run
```
##Resetting virtual devices if Dynodroid gets stuck after logcat command
```shell
android avd
```
On each AVD, disable snapshot option
