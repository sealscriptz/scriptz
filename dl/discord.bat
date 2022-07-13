@echo off
color 0B
title SEALSCRIPTZ - Select Discord Version
echo Install Discord
echo Please enter the number of the Discord version you want.
echo.
echo 1. Discord Stable (Basic Discord)
echo 2. Discord Canary
echo 3. Discord PTB (Public Test Build)
echo 4. BetterDiscord (must have Stable, Canary or PTB to install it to)
echo.
set /p id=Enter number option:
if %id% == 1 goto stableapp
if %id% == 2 goto canapp
if %id% == 3 goto ptbapp
if %id% == 4 goto bdapp

:stableapp
title SEALSCRIPTZ - Installing Stable Discord
bitsadmin.exe /transfer "Installing Stable Discord" /priority high https://discord.com/api/downloads/distributions/app/installers/latest?channel=stable&platform=win&arch=x86 C:\Users\%USERNAME%\Downloads\discordVer.exe
cd C:\Users\%USERNAME%\Downloads
discordVer.exe
exit

:canapp
title SEALSCRIPTZ - Installing Canary Discord
bitsadmin.exe /transfer "Installing Canary Discord" /priority high https://discordapp.com/api/download/canary?platform=win C:\Users\%USERNAME%\Downloads\discordVer.exe
cd C:\Users\%USERNAME%\Downloads
discordVer.exe
exit

:ptbapp
title SEALSCRIPTZ - Installing PTB Discord
bitsadmin.exe /transfer "Installing PTB Discord" /priority high https://discord.com/api/downloads/distributions/app/installers/latest?channel=ptb&platform=win&arch=x86 C:\Users\%USERNAME%\Downloads\discordVer.exe
cd C:\Users\%USERNAME%\Downloads
discordVer.exe
exit

:bdapp
title SEALSCRIPTZ - Installing BetterDiscord
bitsadmin.exe /transfer "Installing BetterDiscord" /priority high https://github.com/BetterDiscord/Installer/releases/latest/download/BetterDiscord-Windows.exe C:\Users\%USERNAME%\Downloads\discordVer.exe
cd C:\Users\%USERNAME%\Downloads
discordVer.exe
exit
