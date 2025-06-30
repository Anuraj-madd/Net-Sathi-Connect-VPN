@echo off
setlocal enabledelayedexpansion

REM Set main application and directory names
set APP_NAME=NET Sathi Connect VPN
set EXE_NAME=netsathi_vpn.exe
set ICON_NAME=nsSquare.ico
set IMAGE_NAME=nsSquare.png

REM Set the installation directory path
set INSTALL_BASE_DRIVE=C:
set INSTALL_DIR_PATH=%INSTALL_BASE_DRIVE%\%APP_NAME%

REM Set the desktop shortcut file name
set SHORTCUT_FILE_NAME=%APP_NAME%.lnk

echo Starting installation of %APP_NAME%...
echo.

REM Create the installation directory
echo Creating installation directory: "%INSTALL_DIR_PATH%"
if exist "%INSTALL_DIR_PATH%" (
    echo Directory already exists. Cleaning up...
    rd /s /q "%INSTALL_DIR_PATH%"
)
mkdir "%INSTALL_DIR_PATH%"
if errorlevel 1 (
    echo Failed to create directory: "%INSTALL_DIR_PATH%"
    pause
    exit /b 1
)

REM Copy application files
echo.
echo Copying application files...
copy "%EXE_NAME%" "%INSTALL_DIR_PATH%\" /Y
if errorlevel 1 (
    echo Failed to copy %EXE_NAME%
    pause
    exit /b 1
)

copy "%IMAGE_NAME%" "%INSTALL_DIR_PATH%\" /Y
if errorlevel 1 (
    echo Failed to copy %IMAGE_NAME%
    pause
    exit /b 1
)

copy "%ICON_NAME%" "%INSTALL_DIR_PATH%\" /Y
if errorlevel 1 (
    echo Failed to copy %ICON_NAME%
    pause
    exit /b 1
)

echo Files copied successfully.
echo.

REM Wait a moment to ensure files are fully written
timeout /t 2 /nobreak > nul

REM Create desktop shortcut using PowerShell
echo Creating desktop shortcut...

REM Set paths for the shortcut
set "TARGET_EXE=%INSTALL_DIR_PATH%\%EXE_NAME%"
set "SHORTCUT_PATH=%USERPROFILE%\Desktop\%SHORTCUT_FILE_NAME%"
set "ICON_PATH=%INSTALL_DIR_PATH%\%ICON_NAME%"

REM PowerShell command to create shortcut with proper icon
powershell -NoProfile -ExecutionPolicy Bypass -Command ^
"$WshShell = New-Object -ComObject WScript.Shell; ^
$Shortcut = $WshShell.CreateShortcut('%SHORTCUT_PATH%'); ^
$Shortcut.TargetPath = '%TARGET_EXE%'; ^
$Shortcut.IconLocation = '%ICON_PATH%,0'; ^
$Shortcut.WorkingDirectory = '%INSTALL_DIR_PATH%'; ^
$Shortcut.Description = '%APP_NAME%'; ^
$Shortcut.Save()"

if errorlevel 1 (
    echo Failed to create desktop shortcut.
    pause
    exit /b 1
) else (
    echo Desktop shortcut created successfully.
)

echo.
echo Installation complete!
echo.
echo Files installed in: "%INSTALL_DIR_PATH%"
echo Desktop shortcut created as: "%SHORTCUT_FILE_NAME%"
echo.
echo You can now run %APP_NAME% from your desktop shortcut.
echo.

pause