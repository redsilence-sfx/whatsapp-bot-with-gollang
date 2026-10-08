@echo off
title Building YamzzBot with Plugins
echo ====================================================================
echo     👑 REBUILDING YAMZZBOT WITH GROUP PLUGIN SUPPORT 👑
echo ====================================================================
echo.
echo [1/2] Downloading Go dependencies...
go mod tidy

echo.
echo [2/2] Building bot binary with plugin support...
go build -o yamzzbot.exe .

if %ERRORLEVEL% EQU 0 (
    echo.
    echo ====================================================================
    echo   ✅ BUILD SUCCESS! New features ready:
    echo   🔒 -lockgroup / -unlockgroup
    echo   📊 -online / -onlinemembers
    echo   🕐 -lastseen @mention
    echo ====================================================================
    echo.
    echo   Run: .\yamzzbot.exe or .\run.bat
    echo ====================================================================
) else (
    echo.
    echo ====================================================================
    echo   ❌ BUILD FAILED! Check error messages above
    echo ====================================================================
)

pause
