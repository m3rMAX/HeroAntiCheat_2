@echo off
mvn clean package
if errorlevel 1 exit /b 1
echo Build finished. Check the target folder for the JAR.
