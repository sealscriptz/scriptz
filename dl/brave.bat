@echo off
color 0B
title SEALSCRIPTZ - Downloading Brave
bitsadmin.exe /transfer "Downloading Brave" /priority high https://laptop-updates.brave.com/latest/winx64 C:\Users\%USERNAME%\Downloads\braveInst.exe
title SEALSCRIPTZ - Installing Brave
cd C:\Users\%USERNAME%\Downloads
braveInst.exe
exit
