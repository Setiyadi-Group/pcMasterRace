@echo off
REM Disables online search results in Windows Search
REM Requires Windows 10/11

set "regPath=HKCU\Software\Microsoft\Windows\CurrentVersion\Search"

reg add "%regPath%" /v BingSearchEnabled /t REG_DWORD /d 0 /f >nul
reg add "%regPath%" /v AllowSearchToUseLocation /t REG_DWORD /d 0 /f >nul

if %errorlevel% equ 0 (
    echo [Success] Online search results disabled. Restart Explorer or reboot to apply changes.
) else (
    echo [Error] Failed to modify registry. Run as Administrator?
)

pause