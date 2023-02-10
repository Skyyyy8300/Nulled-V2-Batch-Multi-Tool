@echo off
title REAPER
cls
color C


echo ----------------------------------------------------------
echo PING THE IP AND SELL YOUR SOUL TO THE REAPER....
ECHO ----------------------------------------------------------           
echo             ;::::::
echo            ;::::; :;
echo          ;:::::'   :;
echo         ;:::::;     ;.
echo        ,:::::'       ;           OOO\
echo       ::::::;       ;          OOOOO\
echo        ;:::::;       ;         OOOOOOOO
echo       ,;::::::;     ;;         / OOOOOOO
echo     ;::::::::::,,,,,;.        /  / DOOOOOO
echo   .';:::::::::::::::::;,     /  /     DOOOO
echo ,::::::;::::::;;;;::::;,   /  /        DOOO
echo ;::::::'::::::;;;::::: ,#/  /          DOOO
echo ::::::::;::::::;;::: ;::#  /            DOOO
echo :::::::::;:::::::: ;::::# /              DOO
echo :::::::::;:::::: ;::::::#/               DOO
echo ::::::::::;; ;::::::::::#                OO
echo :::::::::::;::::::::;:::#                OO
echo :::::::::::::::::;':;::#                 O
echo  :::::::::::::;' /  / :#
echo   :::::::::::;'  /  /   #
echo ---------------------------------------------------------------
echo last chance are you willing to sell your soul to the reaper?...
echo ----------------------------------------------------------------
set /p IP=ENTER SOULS IP AND LET THE REAPER FETCH HIS SOUL:
:top
color C
PING -n 1 %IP% | FIND "TTL="
IF ERRORLEVEL 1 (echo SOULS IP was sliced by the Reapers scythe.)
ping -n 2 0 10 127.0.0.1 >nul
PING -n 1 %IP% | FIND "TTL="
IF ERRORLEVEL 1 (echo SOULS IP was taken to the grave.) 
ping -n 2 0 10 127.0.0.1 >nul
PING -n 1 %IP% | FIND "TTL="
IF ERRORLEVEL 1 (echo SOULS IP was snatched.)
ping -n 2 0 10 127.0.0.1 >nul
PING -n 1 %IP% | FIND "TTL="
IF ERRORLEVEL 1 (echo SOULS IP Was burned in hell.)
ping -n 2 0 10 127.0.0.1 >nul
PING -n 1 %IP% | FIND "TTL="
IF ERRORLEVEL 1 (echo SOULS IP Was pumped by the reaper.)
ping -n 2 0 10 127.0.0.1 >nul
GoTo top