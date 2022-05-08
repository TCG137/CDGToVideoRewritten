:cdgtovideo
@echo off
Color 70
REM Finally revived this old project.
REM The whole reason why I made CDGToVideo is because all CD+G Tools are expensive. 
cls
title CDGToVideo Rewritten
echo CDGToVideo Rewritten 
echo This tool requires FFMPEG in the same directory of the program. Download at https://ffmpeg.org/download.html.
echo If you opened the program just using the batch file please close it and drag a .cdg to this batch file 
REM yes
echo Select a task:
echo =============
echo -
echo 1) Render MP4 with audio (Needs MP3 and CDG Drag and dropped into program)
echo 2) Render MP4 without audio (Only needs CDG)
echo 3) Changelog
echo 4) Credits
echo -
set /p op=Type option:
if "%op%"=="1" goto op1
if "%op%"=="2" goto op2
if "%op%"=="3" goto changelog
if "%op%"=="4" goto credits

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
echo Thank you for using CDGToVideo
pause
exit

:changelog 
cls
echo Changelog 5/8/2022 
echo Finally made this tool public.
echo Can render with and without audio.
pause
goto cdgtovideo

:credits
echo FFMPEG code - jagabo https://forum.videohelp.com/threads/393233-freeware-Converter-CDG-to-mp4-avi-wmv#post2551252
echo Multiple choice - SmithMart https://stackoverflow.com/a/9307674
pause
goto cdgtovideo