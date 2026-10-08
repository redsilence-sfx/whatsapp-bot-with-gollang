@echo off
echo ============================================================
echo   BUILD YAMZZBOT FOR LINUX (Pterodactyl)
echo ============================================================
echo.

SET GOOS=linux
SET GOARCH=amd64
SET CGO_ENABLED=0

echo Building for Linux...
go build -o yamzzbot .

if %ERRORLEVEL% EQU 0 (
    echo.
    echo ============================================================
    echo   SUCCESS! Binary: yamzzbot
    echo ============================================================
    echo.
    echo Next steps:
    echo 1. Upload file "yamzzbot" (no extension!) to Pterodactyl
    echo 2. Start server
    echo.
) else (
    echo.
    echo ERROR: Build failed!
    echo Make sure Go is installed: go version
    echo.
    pause
)
