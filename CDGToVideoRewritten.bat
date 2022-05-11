:cdgtovideo
REM Finally revived this old project.
REM The whole reason why I made CDGToVideo is because all CD+G Tools are expensive. 
@echo off
Color 1F
cls
title CDGToVideo Rewritten v1.0.2
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
echo 5) Render WebM with audio (Under Construction)
echo 6) Render WebM without audio
echo 7) Changelog
echo 8) Credits
echo -
set /p op=Select an option:
if "%op%"=="1" goto op1
if "%op%"=="2" goto op2
if "%op%"=="3" goto op3
if "%op%"=="4" goto op4
if "%op%"=="5" goto op5
if "%op%"=="6" goto op6
if "%op%"=="7" goto changelog
if "%op%"=="9" goto credits

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
echo Thank you for using CDGToVideo.
pause
exit

:op5
This feature is currrently under construction.
pause
goto cdgtovideo

:op6
ffmpeg -i %1 -pix_fmt yuv420p -vcodec libx264 -acodec copy "%~dpn1.webm"
echo Thank you for using CDGToVideo
pause
exit

:changelog 
cls
echo Changelog 5/10/2022
echo added webm rendering mode.
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