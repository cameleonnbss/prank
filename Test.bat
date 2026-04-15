@echo off
color 0A
title Hack en cours...

for /l %%i in (1,1,30) do (
    start cmd /k "color 0A && echo Vous avez été hacké && title Terminal %%i"
    timeout /t 1 /nobreak >nul
)

taskkill /f /im cmd.exe /t

color 0A
cls
echo.
echo.
echo.
echo             C'ETAIT JUSTE UNE BLAGUE FRRO
echo.
echo.
echo.
echo             IL Y A RIEN
echo.
echo.
echo.
timeout /t 5 /nobreak >nul
exit
