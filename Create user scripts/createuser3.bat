@echo off

rem Check if the first argument is "/h" for help
if "%1" == "/h" (
  goto :showHelp
)

rem Initialize variables
set username=
set password=
set admin=false

rem Check if the first argument is provided, if not, prompt for inputs
if "%1" == "" (
  set /p username="Enter username: "
  set /p password="Enter password: "
  set /p isAdmin="Do you want this user to be an administrator (Y/N): "
  echo.

  rem Check if the user wants to add the user as an administrator
  if "%isAdmin%" == "Y" (
    set admin=true
  )
) else (
  set username=%1
  set password=%2

  rem Check if the third argument is invalid
  if not "%3" == "" if /i not "%3" == "/admin" (
    echo Error: Invalid argument: %3
    echo.
    goto :showHelp
  )
  rem Check if the third argument is "/admin"
  if /i "%3" == "/admin" (
    set admin=true
  )
)

rem Add the user to the system
echo Adding user...
net user %username% %password% /add

rem Check if the user was added successfully
if %errorlevel% == 0 (
  echo Normal user added: %username%
  echo.
) else (
  echo Failed to add user: %username%
  echo.
  goto :EOF
)

rem If the user wants to add the user as an administrator
if "%admin%" == "true" (
  echo Adding user to administrators...
  net localgroup administrators %username% /add

  rem Check if the user was added to administrators group successfully
  if %errorlevel% == 0 (
    echo Admin user added: %username%
    echo.
  ) else (
    echo Failed to add user to administrators: %username%
    echo.
  )
)

pause
goto :EOF

:showHelp
echo HELP:
echo.
echo This script adds a user to the system and optionally adds the user to the administrators group.
echo.
echo Usage: there are 2 ways of using the script.
echo First method: %0 username password [/admin]
echo Second method: no need to add the arguments, the script will ask for the necessary information.
echo.
echo username: The username for the new user
echo password: The password for the new user
echo /admin: Optional argument to add the user to the administrators group
echo Example: %0 johndoe secret123 [/admin]
goto :EOF
