@echo off
title Nuked Pinger

mode con lines=20 cols=72
color 2
type Banner5.py
set /p IP=Enter IP:
:top
PING -n 1 %IP% | FIND "TTL="
IF ERRORLEVEL 1 (echo %IP% got SMOKED)
ping -t 2 0 10 127.0.0.1>nul
color 05
PING -n 1 %IP% | FIND "TTL="
IF ERRORLEVEL 1 (echo %IP% got SMOKED)
ping -t 2 0 10 127.0.0.1>nul
color 02
PING -n 1 %IP% | FIND "TTL="
IF ERRORLEVEL 1 (echo %IP% got SMOKED)
ping -t 2 0 10 127.0.0.1>nul
color 03
PING -n 1 %IP% | FIND "TTL="
IF ERRORLEVEL 1 (echo %IP% got SMOKED)
ping -t 2 0 10 127.0.0.1>nul
color 9
PING -n 1 %IP% | FIND "TTL="
IF ERRORLEVEL 1 (echo %IP% got SMOKED)
ping -t 2 0 10 127.0.0.1>nul
color 08
PING -n 1 %IP% | FIND "TTL="
IF ERRORLEVEL 1 (echo %IP% got SMOKED)
ping -t 2 0 10 127.0.0.1>nul
goto top