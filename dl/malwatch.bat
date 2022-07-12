@echo off
color 0B
if not exist "C:\Users\%USERNAME%\Downloads\SealScriptzExports\" mkdir C:\Users\%USERNAME%\Downloads\SealScriptzExports
cls
title SEALSCRIPTZ - Downloading Malwatch/Enderman Malware Repo
bitsadmin.exe /transfer "Downloading Malwatch Repo" /priority high https://github.com/Endermanch/MalwareDatabase/archive/refs/heads/master.zip C:\Users\%USERNAME%\Downloads\SealScriptzExports\MalwatchRepo.zip
title SEALSCRIPTZ - Displaying Liability Disclaimer and Pass (Pass: mysubsarethebest)
echo.
echo Opening the Malwatch directory momentarily.
echo Please don't run any malware that violates the SealVM rules (ex: crypto miners). SealScriptz and Malwatch/Enderman aren't liable for any damages and you are responsible for your own activity.
echo If you are asked for a password to run any of the malware, its mysubsarethebest
echo Again, if a password is asked for, its mysubsarethebest
TIMEOUT /T 10 /NOBREAK
%SystemRoot%\explorer.exe "C:\Users\%USERNAME%\Downloads\SealScriptzExports"
exit
