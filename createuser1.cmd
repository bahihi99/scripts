@echo off

rem Check if the first argument is "/h" for help
if /i "%1" == "/h" (
    goto :showHelp
    goto :EOF
)

rem Ask for the username
set /p username="Enter the name of the user: "

rem Ask for the password
set /p password="Enter the password: "

rem Ask if the user should be an admin
set /p isAdmin="Do you want this user to be an administrator (Y/N): "

echo Adding user...
net user %username% %password% /add

if %errorlevel% == 0 (
    echo Normal user added: %username%
    echo.

) else (
    echo Failed to add user: %username%
    echo.

goto :EOF
)

rem Check if the user should be added to the administrator group
if /i "%isAdmin%" == "Y" (
    echo Adding user to administrators...
    net localgroup administrators %username% /add

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
echo This script adds a user to the system and optionally adds the user to the administrator group.
echo.
echo The script will ask for the necessary information.
goto :EOF
