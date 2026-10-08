@echo off
echo ============================================================
echo   CREATE ZIP FOR PTERODACTYL PANEL
echo ============================================================
echo.

REM Check if yamzzbot binary exists
if not exist "yamzzbot" (
    echo ERROR: Linux binary "yamzzbot" not found!
    echo Run build_linux.bat first!
    pause
    exit /b 1
)

echo Creating ZIP file...
echo.

REM Delete old ZIP if exists
if exist "yamzzbot_pterodactyl.zip" del "yamzzbot_pterodactyl.zip"

REM Create ZIP with important files only
powershell -Command "Compress-Archive -Path yamzzbot,index.js,package.json,main.go,go.mod,go.sum,plugin_integration.go,plugins,meowcaller,egg-yamzzbot.json,bot_config.json,51.mp3,52.mp4,start.sh,.gitignore,CARA_UPLOAD_PTERODACTYL.txt -DestinationPath yamzzbot_pterodactyl.zip -Force"

if %ERRORLEVEL% EQU 0 (
    echo.
    echo ============================================================
    echo   SUCCESS! ZIP Created: yamzzbot_pterodactyl.zip
    echo ============================================================
    echo.
    
    REM Show ZIP size
    for %%A in (yamzzbot_pterodactyl.zip) do (
        set size=%%~zA
        set /a sizeMB=!size! / 1048576
        echo   Size: !sizeMB! MB
    )
    
    echo.
    echo Next steps:
    echo 1. Upload yamzzbot_pterodactyl.zip to Pterodactyl
    echo 2. Unarchive in panel
    echo 3. Start server
    echo.
) else (
    echo.
    echo ERROR: Failed to create ZIP!
    echo.
    pause
)
