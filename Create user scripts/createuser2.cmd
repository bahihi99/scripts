@echo off

rem Check if the user entered the "/h" argument for help
if /i "%1" == "/h" (
    goto :showHelp
)

rem Check if the user entered the required arguments for username and password
if "%~1"=="" (
    echo Missing arguments.
    echo.
    goto :showHelp
)

set username=%1
set password=%2

rem Check if the user entered the optional "/admin" argument
if not "%3" == "" if /i not "%3" == "/admin" (
    echo Error: Invalid argument: %3
    echo.
    goto :showHelp
)

echo Adding normal user...

rem Try to add the normal user
net user %username% %password% /add

rem Check if the "net user" command was successful
if %errorlevel% == 0 (
    echo Normal user added: %username%
    echo.
) else (
    echo Failed to add user: %username%
    echo.
    goto :EOF
)

rem Check if the user wants to add the user to the administrators group
if /i "%3"=="/admin" (
    echo Adding user to administrators...
    net localgroup Administrators %username% /add

    rem Check if the "net localgroup" command was successful
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
echo Usage: %0 username password [/admin]
echo.
echo username: The username for the new user
echo password: The password for the new user
echo /admin: Optional argument to add the user to the administrators group
echo Example: %0 johndoe secret123 [/admin]
goto :EOF
