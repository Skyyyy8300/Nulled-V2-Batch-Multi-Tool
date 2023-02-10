@echo off
cls
title Nulled V2 Login
mode con lines=20 cols=87

type Banner1.py
:Username
echo.
set /p Username=[[35mUsername Idertification/[31m
if '%Username%'=='Nulled' goto Password 
if not '%Username%'==Nulled' exit 

:Password
echo.
set /p Password=[[35mPassword Identification/[31m
if '%Password%'=='Nulled' cls & goto Logging 
if not '%Password%'==Nulled' exit 

:Logging
title Establishing Connection To Login...
mode con lines=30 cols=60
echo.
type Banner2.py
ping localhost -n 2 >nul
cls
echo.
type Banner3.py
ping localhost -n 2 >nul
cls
echo.
type Banner4.py
ping localhost -n 2 >nul
cls
echo.
mode con lines=20 cols=72
title Establishing Connection To Login Established!
type Banner5.py
ping localhost -n 2 >nul
pause
cls & goto top

:top
title [Nulled Souls] [%DATE%] [%TIME%]
mode con lines=30 cols=112
type Banner6.py
set/p action=[34mNulledSouls-[31mMain Menu/[31m
echo [34m
if '%action%'=='Help' goto helps 
if '%action%'=='help' goto helps 
if '%action%'=='Ping' goto pinger
if '%action%'=='ping' goto pinger 
if '%action%'=='Tcp' goto Tcp Pinger
if '%action%'=='tcp' goto Tcp Pinger
if '%action%'=='GeoIP' goto lookup
if '%action%'=='geoip' goto lookup 
if '%action%'=='Pscan' goto Portscan  
if '%action%'=='pscan' goto Portscan
if '%action%'=='Log' goto Logger
if '%action%'=='log' goto Logger
if '%action%'=='Pcps' goto Pcps
if '%action%'=='pcps' goto Pcps
if '%action%'=='Putty' goto Putty
if '%action%'=='putty' goto Putty
if '%action%'=='Info' goto Info
if '%action%'=='info' goto Info
if '%action%'=='Stressers' goto Stressers
if '%action%'=='stressers' goto Stressers
if '%action%'=='Checkhost' goto CheckHost
if '%action%'=='checkhost' goto CheckHost
if '%action%'=='Spam' goto SpamBot
if '%action%'=='spam' goto SpamBot
if '%action%'=='Portlist' goto Portlist
if '%action%'=='portlist' goto Portlist
if '%action%'=='Nulled' goto NulledV2
if '%action%'=='cls' cls & goto top
if '%action%'=='' goto top
if not '%action%'=='' goto top


:helps
@echo off
type Banner7.py
Pause
cls
goto top


:Pinger
@echo off & cls
type Banner6.py
type Banner8.py
set/p Pinger=[34m[NulledSouls-[31mIP Pingers/[31m
if '%Pinger%'=='1' start 1.bat
if '%Pinger%'=='2' start 2.bat
if '%Pinger%'=='3' start 3.bat
if '%Pinger%'=='4' start 4.bat
if '%Pinger%'=='5' start 9.bat
if '%Pinger%'=='6' goto top
if '%Pinger%'=='' goto Pinger
if not '%Pinger%'=='' goto Pinger
cls
goto Pinger


:Tcp Pinger
@echo off & cls
type Banner6.py
set /p TCPSIP=[34m[NulledSouls-[31mTCP Pinger IP/[31m
if %TCPSIP% == 1 goto 
echo.
set /p TCPSPORT=[34mNulledsouls-[31mTCP Pinger Port/[31m
if %TCPSPORT% == 1 goto 
start 4.exe %TCPSIP% -p %TCPSPORT%
goto top

:lookup
@echo off 
setlocal ENABLEDELAYEDEXPANSION
set webclient=webclient
if exist "%temp%\%webclient%.vbs" del "%temp%\%webclient%.vbs" /f /q /s >nulr
if exist "%temp%\response.txt" del "%temp%\response.txt" /f /q /s >nul
:menu
cls
type Banner6.py
type Banner10.py
goto action
:input
echo.
echo Please enter a valid input option.
:action
echo.
set /p action=[34m[NulledSouls-[31mGeoIP/[31m
if '%action%'=='1' echo sUrl = "http://ipinfo.io/json" > %temp%\%webclient%.vbs & goto localip
if '%action%'=='2' goto iplookup
if '%action%'=='3' goto top
if '%action%'=='' goto lookup
goto input
:iplookup
cls
type Banner6.py
echo                                        Type an IP to lookup
set ip=127.0.0.1
set /p ip=[34m[NulledSouls-[31mGeo IP Lookup/[31m
echo sUrl = "http://ipinfo.io/%ip%/json" > %temp%\%webclient%.vbs
:localip
cls
echo set oHTTP = CreateObject("MSXML2.ServerXMLHTTP.6.0") >> %temp%\%webclient%.vbs
echo oHTTP.open "GET", sUrl,false >> %temp%\%webclient%.vbs
echo oHTTP.setRequestHeader "Content-Type", "application/x-www-form-urlencoded" >> %temp%\%webclient%.vbs
echo oHTTP.setRequestHeader "Content-Length", Len(sRequest) >> %temp%\%webclient%.vbs
echo oHTTP.send sRequest >> %temp%\%webclient%.vbs
echo HTTPGET = oHTTP.responseText >> %temp%\%webclient%.vbs
echo strDirectory = "%temp%\response.txt" >> %temp%\%webclient%.vbs
echo set objFSO = CreateObject("Scripting.FileSystemObject") >> %temp%\%webclient%.vbs
echo set objFile = objFSO.CreateTextFile(strDirectory) >> %temp%\%webclient%.vbs
echo objFile.Write(HTTPGET) >> %temp%\%webclient%.vbs
echo objFile.Close >> %temp%\%webclient%.vbs
echo Wscript.Quit >> %temp%\%webclient%.vbs
start %temp%\%webclient%.vbs
set /a requests=0
echo.
rem echo Waiting for API response. . .
echo  Looking up IP Address. . .
:checkresponseexists
set /a requests=%requests% + 1
if %requests% gtr 7 goto failed
IF EXIST "%temp%\response.txt" (
goto response_exist
) ELSE (
ping 127.0.0.1 -n 2 -w 1000 >nul
goto checkresponseexists
)
:failed
taskkill /f /im wscript.exe >nul
del "%temp%\%webclient%.vbs" /f /q /s >nul
echo.
echo Did not receive a response from the API.
echo.
pause
goto menu
:response_exist
cls
type Banner6.py
for /f "delims=     " %%i in ('findstr /i "," %temp%\response.txt') do (
    set data=%%i
echo.
    set data=!data:,=!
    set data=!data:""=Not Listed!
    set data=!data:"=!
    set data=!data:ip:=IP:      !
    set data=!data:hostname:=Hostname:  !
    set data=!data:org:=ISP:        !
    set data=!data:city:=City:      !
    set data=!data:region:=State:   !
    set data=!data:country:=Country:    !
    set data=!data:postal:=Postal:  !
    set data=!data:loc:=Location:   !
    set data=!data:timezone:=Timezone:  !
    echo !data!
)
echo.
del "%temp%\%webclient%.vbs" /f /q /s >nul
del "%temp%\response.txt" /f /q /s >nul
pause 
cls
if '%ip%'=='' goto top
goto top

:Portscan
@echo off & cls
start 5.exe
goto top


:Logger
@echo off
set /p name=[34m[NulledSouls-[31mLogger Name/[31m
echo [35m
if %name% == 1 goto LOGGED IPS
set /p IP=[34mNulledSouls-[31mLogger IP/[31m
echo %name%    %IP%  -  %date% %time%>> LOGGED IPS.txt
echo.
echo [31m                                   Souls Name And IP Was LOGGED!
pause
cls 
goto top


:Pcps
@echo off & cls
start 6.exe
goto top

:Putty 
@echo off & cls
start 7.exe
goto top

:Info
@echo off & cls 
type Banner6.py
type Banner11.py
set /p Go=[[34mNulledSouls-[31mInformation/[31m
if '%Go%'=='1' start https://www.fastpeoplesearch.com/   
if '%Go%'=='2' start http://www.whitepages.com/
if '%Go%'=='3' start https://instantusername.com/#/
if '%Go%'=='' goto top
if '%Go%'=='4' cls & goto top
if not '%Go%'=='' cls & goto Information
cls
goto Info



:Stressers
@echo off & cls
type Banner6.py
type Banner14.py
set /p Go=[[34mNulledSouls-[31mStressers/[31m
if '%St%'=='1' start https://www.stressthem.to/  
if '%St%'=='2' start https://instant-stresser.com/
if '%St%'=='3' start https://quez.in/
if '%St%'=='' goto top
if '%St%'=='4' cls & goto top
if not '%St%'=='' cls & goto Stressers
cls
goto Stressers



:Spambot
@echo off & cls
start 8.vbs
goto top


:NulledV2
@echo off
type Banner12.py
pause
cls
goto top

:portlist
@echo off 
type Banner13.py
pause
cls
goto top


:Checkhost 
@echo off
start https://check-host.net/
cls
goto top






