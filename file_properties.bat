@echo off

echo Welcome to File Properties Viewer!

if "%~1" == "" (
  echo Usage: %~nx0 ^<file_name^>
  exit /b 1
)

echo File Properties for: %~1
echo ----------------------
dir %~1
echo ----------------------
file %~1