@echo off

echo Welcome to Terminal Lock!
echo Please set a password to lock the terminal.

setlocal enabledelayedexpansion

:prompt_for_password
set /p "PASSWORD=Enter password: "
echo.
set /p "PASSWORD2=Confirm password: "
echo.

if not "!PASSWORD!" == "!PASSWORD2!" (
  echo Passwords do not match. Please try again.
  goto prompt_for_password
)

echo Terminal locked. Enter your password to unlock.

:lock_terminal
set /p "ENTERED_PASSWORD=Enter password: "
echo.

if not "!ENTERED_PASSWORD!" == "!PASSWORD!" (
  echo Incorrect password. Try again.
  goto lock_terminal
)

echo Terminal unlocked.
endlocal