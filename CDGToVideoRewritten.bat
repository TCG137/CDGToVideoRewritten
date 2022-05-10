::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCyDJGyX8VAjFA9cSQeDAE+1EbsQ5+n//NaEqkgYTudxcYzUug==
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSjk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFA9cSQeDAE+1EbsQ5+n//NakhmopW9Q2fIrUmoaLN/Ia/lHhe6oO8l1ul/0FCB5XTBe8fAYgvWtM9jXLZ4nN/Qr5Tyg=
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
:cdgtovideo
@echo off
Color 1F
REM Finally revived this old project.
REM The whole reason why I made CDGToVideo is because all CD+G Tools are expensive. 
cls
title CDGToVideo Rewritten
echo CDGToVideo Rewritten 
echo This tool requires FFMPEG in the same directory of the program. Download at https://ffmpeg.org/download.html.
echo If you opened the program just using the batch file please close it and drag a .cdg to this  program.
REM yes
echo Select a task:
echo =============
echo -
echo 1) Render MP4 with audio (Needs MP3 and CDG Drag and dropped into program)
echo 2) Render MP4 without audio (Only needs CDG)
echo 3) Render MKV with audio
echo 4) Render MKV without audio
echo 5) Changelog
echo 6) Credits
echo -
set /p op=Select an option:
if "%op%"=="1" goto op1
if "%op%"=="2" goto op2
if "%op%"=="3" goto op3
if "%op%"=="4" goto op4
if "%op%"=="5" goto changelog
if "%op%"=="6" goto credits

:op1
color
cls
ffmpeg -i %1 -i %2 -pix_fmt yuv420p -vcodec libx264 -acodec copy "%~dpn1.mp4"
echo Thank you for using CDGToVideo.
pause
exit

:op2
color
cls
ffmpeg -i %1 -pix_fmt yuv420p -vcodec libx264 -acodec copy "%~dpn1.mp4"
echo Thank you for using CDGToVideo.
pause
exit

:op3
cls
ffmpeg -i %1 -i %2 -pix_fmt yuv420p -vcodec libx264 -acodec copy "%~dpn1.mkv"
echo Thank you for using CDGToVideo.
pause
exit

:op4 
ffmpeg -i %1 -pix_fmt yuv420p -vcodec libx264 -acodec copy "%~dpn1.mkv"

:changelog 
cls
echo Changelog 5/9/2022
echo Added MKV rendering for faster render.
echo Fixed Credits page.
echo Changed Color scheme
echo --------------------------------
echo Changelog 5/8/2022 
echo Finally made this tool public.
echo Can render with and without audio.
pause
goto cdgtovideo

:credits
cls
echo FFMPEG code - jagabo https://forum.videohelp.com/threads/393233-freeware-Converter-CDG-to-mp4-avi-wmv#post2551252
echo Multiple choice - SmithMart https://stackoverflow.com/a/9307674
echo 
pause
goto cdgtovideo