@echo off
setlocal
cd /d "%~dp0"
where java >nul 2>nul
if errorlevel 1 (
  echo Java not found. Install JDK 21 first.
  pause
  exit /b 1
)
if not exist gradlew.bat (
  echo Gradle wrapper is not included. This project needs Gradle 8.11 or compatible.
  echo If Gradle is installed, run: gradle build
  echo Otherwise open the folder in IntelliJ IDEA and let Gradle sync.
  pause
  exit /b 1
)
call gradlew.bat build
pause
