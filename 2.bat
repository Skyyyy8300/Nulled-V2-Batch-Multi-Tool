@echo off
title IP Pinger
mode con lines=30 cols=60

echo        ____             _                           
echo       / __ \   _____   (_)  ____     ____     __  __
echo      / / / /  / ___/  / /  / __ \   / __ \   / / / /
echo     / /_/ /  / /     / /  / /_/ /  / /_/ /  / /_/ /         
echo    /_____/  /_/     /_/  / .___/  / .___/   \__, /     
echo                         /_/      /_/       /____/                                         
echo.
set /p IP=[40;31mIP [40;32mAddress/[40;31m
:top
PING -n 1 %IP% | FIND "TTL=">nul
IF ERRORLEVEL 1 goto downed
IF NOT ERRORLEVEL 1 goto online

:downed
echo [40;34m~ [40;37m%IP% [41;38mOffline~[40;37m
echo.
goto top


:online 
echo [40;34m~ [40;37m%IP% [41;38mOnline~[40;37m
echo.
goto top  
