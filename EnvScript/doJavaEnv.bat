@echo off
echo JDK configuring...
set "Path=D:\Develop\Java\jdk1.8.0_112\bin;%Path%"
set "JAVA_HOME=D:\Develop\Java\jdk1.8.0_112"
set "CLASSPATH=.;%JAVA_HOME%\lib\dt.jar;%JAVA_HOME%\lib\tools.jar"

echo gradle configuring...
set "GRADLE_HOME=D:\Develop\Android\android-studio\gradle\gradle-2.14.1"
set "Path=%GRADLE_HOME%\bin;%Path%"

echo/
echo ==============================
echo Java SDK Path load successful!
echo ==============================
echo/