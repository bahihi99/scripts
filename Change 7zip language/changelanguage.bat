@echo off

set list=en fr it pt de nl

if /i "%1" == "/h" (
    goto :showHelp
)

if "%1"=="" (
    set /p lang="choose a language: "
) else (
    set lang=%1
)

for %%a in (%list%) do (
    if /i "%%a" == "%lang%" (
        echo.
        reg add HKCU\Software\7-Zip /t REG_SZ /v Lang /d %lang% /f >null
        echo 7-Zip language set to %lang%
        goto :EOF       
    )
)

echo please enter a valid language code.

:showHelp
echo language codes available: [%list%]

pause
