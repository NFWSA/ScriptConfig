@echo off
call %~dp0\DoJavaEnv.bat

echo NDK configuring...
set "NDK_ROOT=D:\Develop\Android\android-ndk-r9d"
set "NDK_MODULE_PATH=D:\Work\Code\working;%NDK_MODULE_PATH%"

echo ANT configuring...
set "ANT_ROOT=D:\Develop\Android\apache-ant-1.9.6\bin"
set "Path=D:\Develop\Android\apache-ant-1.9.6\bin;%Path%"

echo Android SDK configuring...
set "ANDRIOD_SDK_HOME=D:\Develop\Android\android-sdk-windows"
set "ANDROID_SDK_ROOT=D:\Develop\Android\android-sdk-windows"
set "Path=D:\Develop\Android\android-sdk-windows\platform-tools;%Path%"

echo/
echo ========================================
echo Android Enviroment Path load successful!
echo ========================================
echo/