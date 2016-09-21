# mudroid

##Configuration
### Install Java 5+
```sh
sudo apt-get install default-jdk
```
###Install Python 2.7+ [not 3+]
```sh
sudo apt install python
```
###Download Android SDK and setup SDK_INSTALL( and SDK_INSTALL/tools) and add the to PATH in ~/.bashrc
```sh
export SDK_INSTALL=/home/denglin1021/android-sdk
export PATH=$PATH:$SDK_INSTALL:$SDK_INSTALL/tools 
```
##App compilation
```shell
cd dynodroid_home
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
If there are devices, delete them
Or...[be sure if you want this]
```sh
rm -rf ~/.android/avd
```