@echo off
color 7
title Drippys Pinger
ECHO [31m                   *          *        *          *     *         *      *        *             *   
ECHO [31m         *     :::::::::       :::::::::       :::::::::::       :::::::::       :::::::::    :::   ::: *
ECHO [37m              :+:    :+:      :+:    :+:          :+:           :+:    :+:      :+:    :+:   :+:   :+:  
ECHO [37m       *     +:+    +:+      +:+    +:+          +:+           +:+    +:+      +:+    +:+    +:+ +:+      *
ECHO [37m            +#+    +:+      +#++:++#:           +#+           +#++:++#+       +#++:++#+      +#++:     * 
ECHO [31m       *   +#+    +#+      +#+    +#+          +#+           +#+             +#+             +#+       
ECHO [31m          #+#    #+#      #+#    #+#          #+#           #+#             #+#             #+#      *   
ECHO [37m      *  #########       ###    ###      ###########       ###             ###             ###  *
echo [37m        *            *             *               *               *          *           *

set /p IP=DRIPPY!:[31m
echo [37m===========================
echo [37mPINGING [37mTARGET [31m%IP% [37m
echo [37m===========================
:top
PING -n 1 %IP% | FIND "TTL="
IF ERRORLEVEL 1 echo [31m(%IP%) [35mGot [31mSMOKED [35mBy [31mDrippy! [37m
ping -t 2 0 10 127.0.0.1>nul
PING -n 1 %IP% | FIND "TTL="
IF ERRORLEVEL 1 echo [31m(%IP%) [34mGot [31mDROPPED [34mBy [31mDrippy! [37m
ping -t 2 0 10 127.0.0.1>nul
PING -n 1 %IP% | FIND "TTL="
IF ERRORLEVEL 1 echo [31m(%IP%) [35mGot [31mFRIED [35mBy [31mDrippy! [37m
ping -t 2 0 10 127.0.0.1>nul
PING -n 1 %IP% | FIND "TTL="
IF ERRORLEVEL 1 echo [31m(%IP%) [34mGot [31mDENIED [34mBy [31mDrippy! [37m
ping -t 2 0 10 127.0.0.1>nul
PING -n 1 %IP% | FIND "TTL="
IF ERRORLEVEL 1 echo [31m(%IP%) [35mGot [31mSLAMMED [35mBy [31mDrippy! [37m
ping -t 2 0 10 127.0.0.1>nul
PING -n 1 %IP% | FIND "TTL="
IF ERRORLEVEL 1 echo [31m(%IP%) [34mGot [31mPUMPED [34mBy [31mDrippy! [37m
ping -t 2 0 10 127.0.0.1>nul
PING -n 1 %IP% | FIND "TTL="
IF ERRORLEVEL 1 echo [31m(%IP%) [35mGot [31mTRASHED [35mBy [31mDrippy! [37m
ping -t 2 0 10 127.0.0.1>nul
PING -n 1 %IP% | FIND "TTL="
IF ERRORLEVEL 1 echo [31m(%IP%) [34mGot [31mCLAPPED [34mBy [31mDrippy! [37m 
ping -t 2 0 10 127.0.0.1>nul
PING -n 1 %IP% | FIND "TTL="
IF ERRORLEVEL 1 echo [31m(%IP%) [35mGot [31mSMASHED [35mBy [31mDrippy! [37m
ping -t 2 0 10 127.0.0.1>nul
PING -n 1 %IP% | FIND "TTL="
IF ERRORLEVEL 1 echo [31m(%IP%) [34mGot [31mPOPPED [34mBy [31mDrippy! [37m
ping -t 2 0 10 127.0.0.1>nul
PING -n 1 %IP% | FIND "TTL="
IF ERRORLEVEL 1 echo [31m(%IP%) [35mGot [31mCAPPED [35mBy [31mDrippy! [37m
ping -t 2 0 10 127.0.0.1>nul
PING -n 1 %IP% | FIND "TTL="
IF ERRORLEVEL 1 echo [31m(%IP%) [34mGot [31mSTUNG [34mBy [31mDrippy! [37m
ping -t 2 0 10 127.0.0.1>nul
PING -n 1 %IP% | FIND "TTL="
IF ERRORLEVEL 1 echo [31m(%IP%) [35mGot [31mSHIT ON [35mBy [31mDrippy! [37m
ping -t 2 0 10 127.0.0.1>nul
PING -n 1 %IP% | FIND "TTL="
IF ERRORLEVEL 1 echo [31m(%IP%) [34mGot [31mDROPPED [34mBy [31mDrippy! [37m
ping -t 2 0 10 127.0.0.1>nul
PING -n 1 %IP% | FIND "TTL="
IF ERRORLEVEL 1 echo [31m(%IP%) [35mGot [31mSMASHED [35mBy [31mDrippy! [37m
ping -t 2 0 10 127.0.0.1>nul
goto :top 

