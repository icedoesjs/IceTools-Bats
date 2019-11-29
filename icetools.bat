@echo off
rem Please read my github page
rem Simple vars below
rem This is what I write when im bored :)
rem Some functions may not work and im to lazy to fix 
rem filepassword is filelocker password
rem lockedfile is the file you want locked with the password
rem numtries is the number of tries for file locker before user is closed out

set filepassword="yourpass" 
set lockedfile ="C:\Users\Jordan Grim\Desktop\Desktp Stuff\Folders\Monitor\testfir" 
set numtries="3" 










@echo OFF
title Ice Tools
color 9
echo Gathering information...
PING localhost -n 2 >NUL
cls
net session >nul 2>&1
if %errorLevel% == 0 (
  echo Welcome to Ice Tools, you are logged in as %USERNAME%
  echo You are not logged in as an admin, some functions may not works
  PING localhost -n 3 >NUL
  cls
  echo Please wait while I load everything for you!
  PING localhost -n 4 >NUL
  goto :main

) else (
  echo Welcome to Ice Tools, you are logged in as %USERNAME%
  PING localhost -n 3 >NUL
  cls 
  echo Please wait while I load everything for you!
  PING localhost -n 4 >NUL
  goto :main
)

:main
cls
title Main Menu
color 7
echo ________________Network Commands_____________________
echo Local information [1]
echo Ping address [2]
echo Website Crasher [3]
echo Network Connections [4]
echo Stop Services [5]
echo Ping of Death [6]
echo Change Static IP [7]
echo ________________System Commands_____________________
echo View Users [8]
echo Key Remapper [9]
echo Reset User Pass [10]
echo Stop program [11]
echo Shutdown this pc [12]
echo Open Program [13]
echo Check for windows update [14]
echo ________________File Control_____________________
echo Clear Temp Folders [15]
echo Duplicate Folder Wipe [16]
echo PC Cleanup [17]
echo Folder Protector [18]
echo ________________Misc Commands_____________________
echo Random site [19]
echo Password Gen [20]
echo _________________Fun Commands_______________________
echo Secret1 [21]
echo Codename-Death [22]
echo DodgeBullets [23]
echo SlowPC? [24]
echo OhshitImInfected [25]
echo ______________________________________________________
set /p choice=Please choose a command 1-25: 
if /I "%choice%" EQU "1" goto :1st
if /I "%choice%" EQU "2" goto :2nd
if /I "%choice%" EQU "3" goto :3rd
if /I "%choice%" EQU "4" goto :4th
if /I "%choice%" EQU "5" goto :5th
if /I "%choice%" EQU "6" goto :6th
if /I "%choice%" EQU "7" goto :7th
if /I "%choice%" EQU "8" goto :8th
if /I "%choice%" EQU "9" goto :9th
if /I "%choice%" EQU "10" goto :10th
if /I "%choice%" EQU "11" goto :11th
if /I "%choice%" EQU "12" goto :12th
if /I "%choice%" EQU "13" goto :13th
if /I "%choice%" EQU "14" goto :14th
if /I "%choice%" EQU "15" goto :15th
if /I "%choice%" EQU "16" goto :16th
if /I "%choice%" EQU "17" goto :17th
if /I "%choice%" EQU "18" goto :18th
if /I "%choice%" EQU "19" goto :19th
if /I "%choice%" EQU "20" goto :20th
if /I "%choice%" EQU "21" goto :Secret1
if /I "%choice%" EQU "22" goto :codename-death
if /I "%choice%" EQU "23" goto :dodegy
if /I "%choice%" EQU "24" goto :xpbruh
if /I "%choice%" EQU "25" goto :virusboom




:1st 
cls
title IceTools - Local Network Information
echo Gathering Local Network Info...
PING localhost -n 3 >NUL
cls 
ipconfig
PING localhost -n 5 >NUL
set /p onechoice="Would you like to return to the main menu? [yes/no] "
if /I "%onechoice%" EQU "yes" goto :main
if /I "%onechoice%" EQU "no" goto :bye

:2nd
cls
set /p ip="Please supply an IP/URL for me to ping: "
ping %ip% 
set /p twochoice="Would you like to return to the main menu? [yes/no] "
if /I "%twochoice%" EQU "yes" goto :main
if /I "%twochoice%" EQU "no" goto :bye

:3rd
cls
Title IceTools - Website Crasher
set /p webs="Please supply a website: "
echo Let this run, do not close!
echo Use CTRL+C to end 
ping localhost>nul
ping %webs% -t -l 1000
set /p twochoice="Would you like to return to the main menu? [yes/no] "
if /I "%twochoice%" EQU "yes" goto :main
if /I "%twochoice%" EQU "no" goto :bye

:4th
cls
Title IceTools - Network Connections
netstat
set /p twochoice="Would you like to return to the main menu? [yes/no] "
if /I "%twochoice%" EQU "yes" goto :main
if /I "%twochoice%" EQU "no" goto :bye

:5th
cls
title IceTools - Service Stopper
tasklist
set /p servicechoice="Please enter service PID "
taskkill /pid "%servicechoice%" /f
echo Task killed at PID %servicechoice% 
set /p twochoice="Would you like to return to the main menu? [yes/no] "
if /I "%twochoice%" EQU "yes" goto :main
if /I "%twochoice%" EQU "no" goto :bye

:6th
cls
title IceTools - Ping of Death
set /p leip="Please enter the IP "
echo To close use CTRL+C
ping %leip% -l 65500 -w 1 -n 1
goto :looper

:7th
cls
title IceTools - Static IP Changer
set /p ipaddy="IP Address "
set /p mask="Subnet Mask: "
set /p gateway="Gateway: "
netsh interface ip set address "Local Area Connection" static %ipaddy% %mask% %gateway% 1
PING localhost -n 5 >NUL
echo Executed static ip change on IP %ipaddy% with mask %mask% and gateway %gateway%
PING localhost -n 3 >NUL
cls
set /p twochoice="Would you like to return to the main menu? [yes/no] "
if /I "%twochoice%" EQU "yes" goto :main
if /I "%twochoice%" EQU "no" goto :bye

:8th
cls 
title IceTools - Users View
set /p twochoice="Would you like to log to a txt? [yes/no] "
if /I "%twochoice%" EQU "yes" goto :logusers
if /I "%twochoice%" EQU "no" goto :users

:logusers
cls 
title IceTools - Users View
net user > users-log.txt
PING localhost -n 5 >NUL
echo A log can be found in users-log.txt
set /p twochoice="Would you like to return to the main menu? [yes/no] "
if /I "%twochoice%" EQU "yes" goto :main
if /I "%twochoice%" EQU "no" goto :bye

:users
cls 
title IceTools - Users View
net user 
PING localhost -n 5 >NUL
set /p twochoice="Would you like to return to the main menu? [yes/no] "
if /I "%twochoice%" EQU "yes" goto :main
if /I "%twochoice%" EQU "no" goto :bye

:9th
cls 
title IceTools - Key Remapper
echo Make sure you have SharpKeys installed!
echo Calling on SharpKeys...
PING localhost -n 4 >NUL
start SharpKeys.exe 
if %errorLevel% EQU 0 (
  echo SharpKeys is not installed!
  echo Taking you to SharpKeys download page..
  PING localhost -n 2 >NUL
  start https://www.randyrants.com/category/sharpkeys/
) else (
  set /p twochoice="Would you like to return to the main menu? [yes/no] "
  if /I "%twochoice%" EQU "yes" goto :main
  if /I "%twochoice%" EQU "no" goto :bye
)

:10th
cls 
title IceTools - Reset User Pass
net user
echo Use the prompt above for the account name field.
set /p username="What is the username of the account? "
net user %username% *
set /p twochoice="Would you like to return to the main menu? [yes/no] "
if /I "%twochoice%" EQU "yes" goto :main
if /I "%twochoice%" EQU "no" goto :bye

:11th
cls 
title IceTools - Stop Program 
tasklist 
echo Use the list above for the PID
set /p taskid="Please enter task PID "
taskkill /f /pid %taskid%
echo Task killed at PID %taskid%
set /p twochoice="Would you like to return to the main menu? [yes/no] "
if /I "%twochoice%" EQU "yes" goto :main
if /I "%twochoice%" EQU "no" goto :bye

:12th
cls 
title IceTools - Shutdown
set /p shutdownchoice="Are you sure you want to shutdown? [yes/no] "
if /I "%shutdownchoice%" EQU "yes" goto :shutdown
if /I "%shutdownchoice%" EQU "no" goto :main

:shutdown
echo Shutting down...
PING localhost -n 3 >NUL
shutdown /s

:13th
cls 
title IceTools - Open Program
set /p program="What program do you want to open? [Include Directory] (ex: C:\Users\User\Desktop\Chrome\chrome.exe) "
%program%
set /p twochoice="Would you like to return to the main menu? [yes/no] "
if /I "%twochoice%" EQU "yes" goto :main
if /I "%twochoice%" EQU "no" goto :bye

:14th
title IceTools - Update Checker
echo Checking for windows update...
PING localhost -n 3 >NUL
C:\Windows\System32\wuauclt.exe
set /p twochoice="Would you like to return to the main menu? [yes/no] "
if /I "%twochoice%" EQU "yes" goto :main
if /I "%twochoice%" EQU "no" goto :bye

:15th
cls 
title IceTools - Clear Temp Folder
set /p drivelet="Please supply the drive for me to clear temp folders in (ex: C) "
cd %drivelet% 
cd %drivelet%:\temp
del *.*
PING localhost -n 3 >NUL
echo All temp files in %drivelet%:\ Cleared!
PING localhost -n 2 >NUL
cls
set /p twochoice="Would you like to return to the main menu? [yes/no] "
if /I "%twochoice%" EQU "yes" goto :main
if /I "%twochoice%" EQU "no" goto :bye

:16th
cls 
title IceTools - Duplicate Folder Wiper
echo Please wait...
cls
echo This module isnt fully completed, please do not use it
PING localhost -n 4 >NUL
cls
echo Returning you to main menu...
PING localhost -n 4 >NUL
goto :main

:17th
cls 
title IceTools - PC Cleanup
set /p twochoice="Are you sure you want to use this, Removes hidden and system attribs from all files in all subdirs. Deletes desktop.ini files. Deletes all shortcuts. Intended for cleaning up archived home drives. [yes/no] "
if /I "%twochoice%" EQU "yes" goto :cleaner
if /I "%twochoice%" EQU "no" goto :main


:18th
cls
title IceTools - Folder Protector
echo Enter the folder password
echo You have %numtries% tries
set /p passeneter=
if %passenter%==%filepassword% (
  goto :right
) 
set /a numtries=%numtries - 1 
if $numtries%==0(
  goto :failpass
)
cls
goto :18th

:19th
title IceTools - Random site
cls 
set /a rand=%random% %%6
echo %rand%
if "%rand%" EQU "1" goto :google
if "%rand%" EQU "2" goto :coolmath
if "%rand%" EQU "3" goto :github
if "%rand%" EQU "4" goto :eelslap
if "%rand%" EQU "5" goto :weirdwtf

:20th
cls
title IceTools - Password Gen
echo Transporting....
ping localhost -n 4 >nul
start www.passwordsgenerator.net/
goto :main

:Secret1
cls 
title Woah it's a secret!
@echo off
title ScrewTheLotOfYou's Batch Movie Player
echo ScrewTheLotOfYou's Batch Movie Player
echo.
echo.
echo.
echo.
echo Press any key to start my pointless movie
echo.
echo (Note, this was made for the movie player mechanism
echo not for the movie quality, I just had to make a movie
echo to prove it worked)

pause >nul

set framecount=0

::~~~~~~~~ Set the frame delay below, this is how fast the program will change frame.
::~~~~~~~~ The fastest is 1, bigger numbers means a slower frame rate.
::~~~~~~~~ Try out finding your ideal frame rate.

set framedelay=3

:CallFrameLoop
set /a framecount= %framecount% + 1
set /a endtime= %time:~9,1% + %framedelay%
if /i %endtime% geq 10 set /a endtime= endtime - 10
call :FrameCheck
Call :Frame%FrameCount% 2>nul
goto CallFrameLoop

:FrameCheck
if /i %time:~9,1% neq %endtime% goto FrameCheck
exit /b


:Frame1
cls
echo ()
echo /\
echo /\
exit /b

:frame2
cls
echo ()__  Who's that?      []
echo /                      /\
echo /\                     /\
exit /b

:frame4
cls
echo ()__               __[] Ooh hello!
echo /                     \
echo /\                   /\
exit /b

:frame6
cls
echo ()__               []
echo /                  /\
echo /\                 /\
exit /b

:frame7
cls
echo ()__             []
echo /                /\
echo /\               /\
exit /b

:frame8
cls
echo ()__           []
echo /              /\
echo /\             /\
exit /b

:frame9
cls
echo ()__         []
echo /            /\
echo /\           /\
exit /b

:frame10
cls
echo ()__       [] Hey
echo /          /\
echo /\         /\
exit /b


:frame13
cls
echo ()__      [] I'm Squarehead.
echo /         /\
echo /\        /\
exit /b

:frame16
cls
echo () Oh     []
echo /\        /\
echo /\        /\
exit /b

:frame19
cls
echo ()Okay... []
echo /\        /\
echo /\        /\
echo.
echo.
exit /b

:frame21
cls
echo ()        [] Wanna explode?
echo /\        /\
echo /\        /\
echo.
echo.
exit /b


:frame24
cls
echo () What?  [] 
echo /\ No..   /\
echo /\        /\
echo.
echo.
exit /b


:frame29
cls
echo () You're []
echo /\ Weird. /\
echo /\        /\
echo.
echo.
exit /b


:frame32
cls
echo ()        [] Fine, Just me then...
echo /\        /\
echo /\        /\
echo.
echo.
exit /b


:frame34
cls
echo ()        [!]
echo /\        /!\
echo /\        /!\
echo.
echo.
FRAMEDELAY=1
exit /b

:frame35
cls
echo ()        [!~!]
echo /\        /! !\
echo /\        /!v!\
echo.             
echo.
exit /b

:frame36
cls
echo ()        [  ]
echo /\       /    \
echo /\      /      \ 
echo.                  
echo.
exit /b


:frame37
cls
echo ()            ]
echo /\        [     
echo /\     / /    \\
echo.                    
echo.
exit /b

:frame38
cls
echo ()          
echo /\        [       ]      
echo /\    / /      \\  
echo.       
echo.
exit /b


:frame39
cls
echo ()  Weirdo.
echo /\              
echo /\    / /[    \\  ]           
echo.      
echo.
echo.
echo.
goto :main


:dodegy
cls 
@echo off
cls
for /l %%i in (1,1,100) do echo.
goto :top
:top
color 02
echo B%random% a%random% t%random% c%random% h%random% c%random% c%random%
ping 192.0.2.2 -n 1 -w 0 >nul
goto :top

:xpbruh
@echo off
call :conf
if not exist batbox.exe call :mkbtx
mode con cols=93 lines=40
batbox /o 37 8 %flag% /c 0x0f /g 20 10 /d "TM"
batbox /f 1
batbox /o 31 28 %progressbar%
batbox /o 20 20 %WinXP%
:start
batbox /o %move% 32 %gum%
set /a move+=1
batbox /o %move% 32 %load%
if %max_D%==%move% batbox /o %move% 32 %gum% & call :reset
batbox /w 20
goto :start
:mkbtx
for %%b in ( 
4D5343460000000073030000000000002C000000000000000301010001000000
00000000470000000100010000060000000000000000FE4259B5200062617462
6F782E657865003FD9412724030006434BB5545F485361143F5737F0CF726B3A
102ABB528B1EC24813421026D3529AB59C184460D7ED6EF7CE79EFB8F74A562F
0B1D543EF5143DC60483C27AF0C14248B18710A4979ECA40426A0329A1B21ECA
AF73EE9D4E21B287FAB6DF77CFF99DF37DDFEF3B3B779D1752C001800D5CC018
808F1C1C3ED879A41015FB9F56C064E942ED141758A8ED96649D4F6A6A4C1306
F8B0A028AAC1F789BC36A8F0B2C2B79E0DF1036A44ACDB557670638F601B4080
E3A0C3FBFDDC06B7044EAE9CE34EA2283041C3B505A48E9E450079B99B69C05B
FC4B1457BC75DD6666DECD8F981BE02EF71797FDC7A32E9A100C7C1EB1E505D9
2CDD5BC7252AC57F1E92ABCA0771EB21D968029C98E76125D25F9967D1ED838C
8372D6F24E093AD9175832FFADCAD43C7F8C459F9442D39D1E8C3947C6913F15
7BB79A7BCD18CBA6D10BB24687B9E33226E4E6904E5DE37A9DE90A3C9C7926F1
98F48C73E401F2CC731FBD66BAB2335D6E8689B0336A13E6798C76B601772CB6
F7E2565EEAD64C1589A931C93092B34B2ECE4E1C6BB466EBE82C1DDD4E8A3ED3
5ED25137B163B861AE9ED8B7D452F182D42F945F4D111213920E14F28B908D57
B3C61233710903560539A9DA3CD0E257901F6EA600D664019744879B295EE44C
3F43EF9BFD303A3FD172A61FE13CDABC17FD9BEBB39F5CD7DFD3BDEEF155565D
6E63B4D8CC0E9EEF910E15745C5D47755EAB32AB245726A20A890C55275B4616
952417A44035BA71FC8498670A970F3F77CCCD7E2862E3F524D44EBFBB6D741F
3D46F7A4DF3847E885988B835574AF0EDE4893F9056F1874970F26101F111711
B6DD3EA8411C472C20A611FD31211C8D0CA89737DAEC4665A1E532F8CA8DA13F
ED2E7013682FBA7FDFA29DA11E7F57775D6B2000A7DBBACEB4051AEA4D077EE0
02076E54833881E846488864FEB09DE2D8AAA2113222ED82124988E48744C3AF
2ABA9A103BF17F6A3BD32D0E192D86A1C97D8386B82DE21FD474550BAABA6CC8
AA42ABBA4421920F7628C941A385F213A298DCB6AE55D69309E18A79D40C6A9A
47BC422C2356106B799D7F8AE16D345931A264F5C644232C9916990382AC085A
4C475F1C920D93EFEF932C4B3734434D00FC02 
) Do >>t.dat (Echo.For b=1 To len^("%%b"^) Step 2
ECHO WScript.StdOut.Write Chr^(Clng^("&H"^&Mid^("%%b",b,2^)^)^) : Next)
Cscript /b /e:vbs t.dat>batbox.ex_
Del /f /q /a t.dat >nul 2>&1
Expand -r batbox.ex_ >nul 2>&1
Del /f /q /a batbox.ex_ >nul 2>&1
goto:eof
:conf
set max_D=49
set max_G=30
set gum=/c 0x00 /g 2 -3 /a 220 /g 4 -3 /a 220 /g 6 -3 /a 220
set load=/c 0xb9 /g 2 -3 /a 220 /c 0xb9 /g 4 -3 /a 220 /c 0xb9 /g 6 -3 /a 220
set WinXP=/c 0x0f /g 0 0 /a 219 /c 0x0f /g 0 1 /a 219 /c 0x0f /g 1 2 /a 219 /c 0x0f /g 1 3 /a 219 /c 0x0f /g 2 4 /a 219 /c 0x0f /g 3 4 /a 219 /c 0x0f /g 3 3 /a 219 /c 0x0f /g 4 4 /a 219 /c 0x0f /g 5 3 /a 219 /c 0x0f /g 5 2 /a 219 /c 0x0f /g 6 1 /a 219 /c 0x0f /g 6 0 /a 219 /c 0x00 /g 3 4 /a 219 /c 0x0f /g 9 1 /a 219 /c 0x0f /g 9 3 /a 219 /c 0x0f /g 9 4 /a 219 /c 0x0f /g 12 4 /a 219 /c 0x0f /g 12 3 /a 219 /c 0x0f /g 12 2 /a 219 /c 0x0f /g 12 1 /a 219 /c 0x0f /g 13 2 /a 219 /c 0x0f /g 14 1 /a 219 /c 0x0f /g 15 1 /a 219 /c 0x0f /g 16 2 /a 219 /c 0x0f /g 16 3 /a 219 /c 0x0f /g 16 4 /a 219 /c 0x0f /g 18 2 /a 219 /c 0x0f /g 18 3 /a 219 /c 0x0f /g 19 4 /a 219 /c 0x0f /g 20 4 /a 219 /c 0x0f /g 19 1 /a 219 /c 0x0f /g 20 1 /a 219 /c 0x0f /g 21 1 /a 219 /c 0x0f /g 21 0 /a 219 /c 0x0f /g 21 2 /a 219 /c 0x0f /g 21 3 /a 219 /c 0x0f /g 21 4 /a 219 /c 0x00 /g 18 2 /a 219 /c 0x00 /g 18 3 /a 219 /c 0x00 /g 19 1 /a 219 /c 0x00 /g 19 4 /a 219 /c 0x00 /g 21 3 /a 219 /c 0x00 /g 21 2 /a 219 /c 0x00 /g 21 0 /a 219 /c 0x0f /g 19 2 /a 219 /c 0x0f /g 19 3 /a 219 /c 0x0f /g 22 0 /a 219 /c 0x0f /g 22 1 /a 219 /c 0x0f /g 22 2 /a 219 /c 0x0f /g 22 3 /a 219 /c 0x0f /g 22 4 /a 219 /c 0x0f /g 25 2 /a 219 /c 0x0f /g 25 3 /a 219 /c 0x0f /g 26 4 /a 219 /c 0x0f /g 27 4 /a 219 /c 0x0f /g 26 1 /a 219 /c 0x0f /g 27 1 /a 219 /c 0x0f /g 28 2 /a 219 /c 0x0f /g 28 3 /a 219 /c 0x0f /g 31 1 /a 219 /c 0x0f /g 31 2 /a 219 /c 0x0f /g 32 3 /a 219 /c 0x0f /g 33 4 /a 219 /c 0x0f /g 34 3 /a 219 /c 0x0f /g 35 4 /a 219 /c 0x0f /g 36 3 /a 219 /c 0x0f /g 37 2 /a 219 /c 0x0f /g 37 1 /a 219 /c 0x0f /g 40 4 /a 219 /c 0x0f /g 41 4 /a 219 /c 0x0f /g 42 4 /a 219 /c 0x0f /g 43 3 /a 219 /c 0x0f /g 42 2 /a 219 /c 0x0f /g 41 2 /a 219 /c 0x0f /g 40 2 /a 219 /c 0x0f /g 40 1 /a 219 /c 0x0f /g 40 0 /a 219 /c 0x0f /g 41 0 /a 219 /c 0x0f /g 42 0 /a 219 /c 0x00 /g 40 0 /a 219 /c 0x00 /g 40 2 /a 219 /c 0x0f /g 43 0 /a 219 /c 0x0f /g 45 2 /a 184 /c 0x0f /g 45 1 /a 184 /c 0x0f /g 45 2 /a 184 /c 0x00 /g 45 2 /a 184 /c 0x04 /g 47 1 /a 219 /c 0x04 /g 46 1 /a 219 /c 0x04 /g 46 2 /a 219 /c 0x04 /g 45 3 /a 219 /c 0x04 /g 48 2 /a 219 /c 0x04 /g 49 3 /a 219 /c 0x04 /g 48 0 /a 219 /c 0x04 /g 49 -1 /a 219 /c 0x04 /g 45 0 /a 219 /c 0x04 /g 44 -1 /a 219 /c 0x00 /g 46 1 /a 219 /c 0x00 /g 45 0 /a 219 /c 0x00 /g 44 -1 /a 219 /c 0x04 /g 46 0 /a 219 /c 0x04 /g 45 -1 /a 219 /c 0x04 /g 51 -1 /a 219 /c 0x04 /g 51 0 /a 219 /c 0x04 /g 51 1 /a 219 /c 0x04 /g 51 2 /a 219 /c 0x04 /g 51 3 /a 219 /c 0x04 /g 52 -1 /a 219 /c 0x04 /g 53 -1 /a 219 /c 0x04 /g 54 0 /a 219 /c 0x04 /g 53 1 /a 219 /c 0x04 /g 52 1 /a 219 /c 0x0f /g 0 -1 /d "microsoft" /c 0x0f /g 9 -1 /a 184 /c 0x0f /g 9 7 /a 201 /c 0x0f /g 10 7 /a 205 /c 0x0f /g 11 7 /a 205 /c 0x0f /g 12 7 /a 205 /c 0x0f /g 13 7 /a 205 /c 0x0f /g 14 7 /a 205 /c 0x0f /g 15 7 /a 205 /c 0x0f /g 16 7 /a 205 /c 0x0f /g 18 7 /a 205 /c 0x0f /g 17 7 /a 205 /c 0x0f /g 19 7 /a 205 /c 0x0f /g 20 7 /a 205 /c 0x0f /g 21 7 /a 205 /c 0x0f /g 22 7 /a 205 /c 0x0f /g 23 7 /a 205 /c 0x0f /g 24 7 /a 205 /c 0x0f /g 25 7 /a 205 /c 0x0f /g 26 7 /a 205 /c 0x0f /g 27 7 /a 205 /c 0x0f /g 28 7 /a 205 /c 0x0f /g 30 7 /a 205 /c 0x0f /g 31 7 /a 205 /c 0x0f /g 29 7 /a 205 /c 0x0f /g 32 7 /a 205 /c 0x0f /g 33 7 /a 205 /c 0x0f /g 34 7 /a 205 /c 0x0f /g 36 7 /a 205 /c 0x0f /g 35 7 /a 205 /c 0x0f /g 37 7 /a 205 /c 0x0f /g 38 7 /a 187 /c 0x0f /g 9 9 /a 200 /c 0x0f /g 38 9 /a 188 /c 0x0f /g 10 7 /d "                             " /c 0x00 /g 9 7 /d "                             " /c 0x00 /g 9 9 /a 219 /c 0x00 /g 38 9 /a 219
set progressbar=/c 0x0f /g 0 0 /a 201 /c 0x0f /g 2 0 /a 205 /c 0x0f /g 1 0 /a 205 /c 0x0f /g 3 0 /a 205 /c 0x0f /g 4 0 /a 205 /c 0x0f /g 5 0 /a 205 /c 0x0f /g 7 0 /a 205 /c 0x0f /g 6 0 /a 205 /c 0x0f /g 8 0 /a 205 /c 0x0f /g 9 0 /a 205 /c 0x0f /g 10 0 /a 205 /c 0x0f /g 11 0 /a 205 /c 0x0f /g 13 0 /a 205 /c 0x0f /g 14 0 /a 205 /c 0x0f /g 15 0 /a 205 /c 0x0f /g 17 0 /a 205 /c 0x0f /g 16 0 /a 205 /c 0x0f /g 12 0 /a 205 /c 0x0f /g 18 0 /a 205 /c 0x0f /g 19 0 /a 205 /c 0x0f /g 20 0 /a 205 /c 0x0f /g 21 0 /a 205 /c 0x0f /g 22 0 /a 205 /c 0x0f /g 23 0 /a 205 /c 0x0f /g 24 0 /a 205 /c 0x0f /g 25 0 /a 187 /c 0x0f /g 0 2 /a 200 /c 0x0f /g 25 2 /a 188 /c 0x0f /g 2 2 /a 205 /c 0x0f /g 1 2 /a 205 /c 0x0f /g 3 2 /a 205 /c 0x0f /g 4 2 /a 205 /c 0x0f /g 5 2 /a 205 /c 0x0f /g 6 2 /a 205 /c 0x0f /g 7 2 /a 205 /c 0x0f /g 8 2 /a 205 /c 0x0f /g 9 2 /a 205 /c 0x0f /g 10 2 /a 205 /c 0x0f /g 11 2 /a 205 /c 0x0f /g 12 2 /a 205 /c 0x0f /g 13 2 /a 205 /c 0x0f /g 14 2 /a 205 /c 0x0f /g 15 2 /a 205 /c 0x0f /g 16 2 /a 205 /c 0x0f /g 17 2 /a 205 /c 0x0f /g 18 2 /a 205 /c 0x0f /g 19 2 /a 205 /c 0x0f /g 20 2 /a 205 /c 0x0f /g 21 2 /a 205 /c 0x0f /g 22 2 /a 205 /c 0x0f /g 23 2 /a 205 /c 0x0f /g 24 2 /a 205 /c 0x0f /g 0 1 /a 186 /c 0x0f /g 25 1 /a 186
set flag=/c 0x7c /g 0 0 /a 219 /c 0x7c /g 1 0 /a 219 /c 0x7c /g 2 0 /a 219 /c 0x7c /g 3 0 /a 219 /c 0x7c /g 4 0 /a 219 /c 0x7c /g -2 1 /a 219 /c 0x7c /g -1 1 /a 219 /c 0x7c /g -1 0 /a 219 /c 0x7c /g 0 1 /a 219 /c 0x7c /g 1 1 /a 219 /c 0x7c /g 2 1 /a 219 /c 0x7c /g 3 1 /a 219 /c 0x7c /g 4 1 /a 219 /c 0x7c /g 5 1 /a 219 /c 0x7c /g -2 2 /a 219 /c 0x7c /g -1 2 /a 219 /c 0x7c /g 0 2 /a 219 /c 0x7c /g 1 2 /a 219 /c 0x7c /g 2 2 /a 219 /c 0x7c /g 4 2 /a 219 /c 0x7c /g 3 2 /a 219 /c 0x7c /g 5 2 /a 219 /c 0x7c /g -2 3 /a 219 /c 0x7c /g 5 3 /a 219 /c 0x7c /g -3 1 /a 219 /c 0x7c /g -3 2 /a 219 /c 0x7c /g -3 3 /a 219 /c 0x7c /g 6 1 /a 219 /c 0x7c /g 6 2 /a 219 /c 0x7c /g 6 3 /a 219 /c 0x79 /g -1 5 /a 219 /c 0x79 /g 0 5 /a 219 /c 0x79 /g 1 5 /a 219 /c 0x79 /g 2 5 /a 219 /c 0x79 /g 3 5 /a 219 /c 0x79 /g 4 5 /a 219 /c 0x79 /g 5 6 /a 219 /c 0x79 /g 3 6 /a 219 /c 0x79 /g 2 6 /a 219 /c 0x79 /g 1 6 /a 219 /c 0x79 /g 0 6 /a 219 /c 0x79 /g -1 6 /a 219 /c 0x79 /g -2 6 /a 219 /c 0x79 /g -3 6 /a 219 /c 0x79 /g 4 6 /a 219 /c 0x79 /g 6 6 /a 219 /c 0x79 /g 6 7 /a 219 /c 0x79 /g 5 7 /a 219 /c 0x79 /g 4 7 /a 219 /c 0x79 /g 3 7 /a 219 /c 0x79 /g 1 7 /a 219 /c 0x79 /g 0 7 /a 219 /c 0x79 /g -1 7 /a 219 /c 0x79 /g -2 7 /a 219 /c 0x79 /g -3 7 /a 219 /c 0x79 /g -3 8 /a 219 /c 0x79 /g -2 8 /a 219 /c 0x79 /g 6 8 /a 219 /c 0x79 /g 5 8 /a 219 /c 0x79 /g 2 7 /a 219 /c 0x7c /g -2 0 /a 219 /c 0x7c /g -3 0 /a 219 /c 0x7c /g 5 0 /a 219 /c 0x7c /g 6 0 /a 219 /c 0x7c /g -1 -1 /a 219 /c 0x7c /g 0 -1 /a 219 /c 0x7c /g 1 -1 /a 219 /c 0x7c /g 2 -1 /a 219 /c 0x7c /g 3 -1 /a 219 /c 0x7c /g 4 -1 /a 219 /c 0x79 /g 0 8 /a 219 /c 0x79 /g -1 8 /a 219 /c 0x79 /g 1 8 /a 219 /c 0x79 /g 2 8 /a 219 /c 0x79 /g 3 8 /a 219 /c 0x79 /g 4 8 /a 219 /c 0x79 /g 4 9 /a 219 /c 0x79 /g 5 9 /a 219 /c 0x79 /g 6 9 /a 219 /c 0x79 /g -2 9 /a 219 /c 0x79 /g -3 9 /a 219 /c 0x70 /g 3 9 /a 219 /c 0x70 /g 4 9 /a 219 /c 0x7c /g -4 1 /a 219 /c 0x7c /g -4 2 /a 219 /c 0x7c /g -4 3 /a 219 /c 0x79 /g -4 7 /a 219 /c 0x79 /g -4 8 /a 219 /c 0x79 /g -4 9 /a 219 /c 0x79 /g -4 10 /a 219 /c 0x79 /g -5 7 /a 219 /c 0x79 /g -5 8 /a 219 /c 0x79 /g -5 9 /a 219 /c 0x79 /g -5 10 /a 219 /c 0x79 /g -5 1 /a 219 /c 0x7c /g -5 1 /a 219 /c 0x7c /g -5 2 /a 219 /c 0x7c /g -5 3 /a 219 /c 0x7c /g -5 4 /a 219 /c 0x7c /g -4 4 /a 219 /c 0x7a /g 8 0 /a 219 /c 0x7a /g 8 1 /a 219 /c 0x7a /g 8 2 /a 219 /c 0x7a /g 8 3 /a 219 /c 0x7a /g 8 4 /a 219 /c 0x7a /g 9 5 /a 219 /c 0x7a /g 9 4 /a 219 /c 0x7a /g 9 3 /a 219 /c 0x7a /g 9 2 /a 219 /c 0x7a /g 9 1 /a 219 /c 0x7a /g 10 1 /a 219 /c 0x7a /g 11 2 /a 219 /c 0x7a /g 10 2 /a 219 /c 0x7a /g 10 3 /a 219 /c 0x7a /g 12 2 /a 219 /c 0x7a /g 13 2 /a 219 /c 0x7a /g 14 1 /a 219 /c 0x7a /g 15 1 /a 219 /c 0x7a /g 16 0 /a 219 /c 0x7a /g 16 1 /a 219 /c 0x7a /g 10 6 /a 219 /c 0x7a /g 10 5 /a 219 /c 0x7a /g 11 5 /a 219 /c 0x7a /g 12 5 /a 219 /c 0x7a /g 13 5 /a 219 /c 0x7a /g 14 5 /a 219 /c 0x7a /g 15 5 /a 219 /c 0x7a /g 16 4 /a 219 /c 0x7a /g 16 3 /a 219 /c 0x7a /g 16 2 /a 219 /c 0x7a /g 14 2 /a 219 /c 0x7a /g 15 2 /a 219 /c 0x7a /g 15 3 /a 219 /c 0x7a /g 15 3 /a 219 /c 0x7a /g 15 4 /a 219 /c 0x7a /g 14 4 /a 219 /c 0x7a /g 13 4 /a 219 /c 0x7a /g 11 4 /a 219 /c 0x7a /g 11 4 /a 219 /c 0x7a /g 10 4 /a 219 /c 0x7a /g 12 4 /a 219 /c 0x7a /g 11 3 /a 219 /c 0x7a /g 12 3 /a 219 /c 0x7a /g 13 3 /a 219 /c 0x7a /g 14 3 /a 219 /c 0x7a /g 17 4 /a 219 /c 0x7a /g 17 3 /a 219 /c 0x7a /g 17 2 /a 219 /c 0x7a /g 17 2 /a 219 /c 0x7a /g 17 1 /a 219 /c 0x7a /g 17 0 /a 219 /c 0x70 /g 10 6 /a 219 /c 0x7a /g 9 0 /a 219 /c 0x7a /g 11 1 /a 219 /c 0x7a /g 12 1 /a 219 /c 0x7a /g 13 1 /a 219 /c 0x7a /g 8 4 /a 219 /c 0x7a /g 8 4 /a 219 /c 0x70 /g 8 4 /a 219 /c 0x70 /g 9 5 /a 219 /c 0x70 /g 10 5 /a 219 /c 0x70 /g 11 5 /a 219 /c 0x70 /g 14 5 /a 219 /c 0x70 /g 15 5 /a 219 /c 0x70 /g 13 5 /a 219 /c 0x70 /g 12 5 /a 219 /c 0x70 /g 15 4 /a 219 /c 0x70 /g 16 4 /a 219 /c 0x70 /g 17 3 /a 219 /c 0x70 /g 17 4 /a 219 /c 0x7a /g 17 3 /a 219 /c 0x7a /g 17 3 /a 219 /c 0x7a /g 17 3 /a 219 /c 0x7a /g 17 3 /a 219 /c 0x70 /g 17 3 /a 219 /c 0x70 /g 16 3 /a 219 /c 0x70 /g 17 2 /a 219 /c 0x7a /g 16 3 /a 219 /c 0x7a /g 11 5 /a 219 /c 0x7a /g 12 5 /a 219 /c 0x7a /g 13 5 /a 219 /c 0x7a /g 14 5 /a 219 /c 0x7a /g 15 4 /a 219 /c 0x7a /g 16 4 /a 219 /c 0x70 /g 16 0 /a 219 /c 0x70 /g 17 0 /a 219 /c 0x70 /g 17 1 /a 219 /c 0x7a /g 17 4 /a 219 /c 0x7a /g 15 5 /a 219 /c 0x7a /g 17 3 /a 219 /c 0x7a /g 17 2 /a 219 /c 0x7a /g 17 1 /a 219 /c 0x7a /g 18 3 /a 219 /c 0x7a /g 18 2 /a 219 /c 0x7a /g 18 1 /a 219 /c 0x7a /g 18 0 /a 219 /c 0x7a /g 17 0 /a 219 /c 0x70 /g 11 1 /a 219 /c 0x70 /g 12 1 /a 219 /c 0x70 /g 13 1 /a 219 /c 0x70 /g 14 1 /a 219 /c 0x70 /g 15 1 /a 219 /c 0x7e /g 8 6 /a 219 /c 0x7e /g 9 6 /a 219 /c 0x7e /g 10 7 /a 219 /c 0x7e /g 9 7 /a 219 /c 0x7e /g 8 7 /a 219 /c 0x7e /g 16 7 /a 219 /c 0x7e /g 17 7 /a 219 /c 0x7e /g 18 7 /a 219 /c 0x7e /g 18 6 /a 219 /c 0x7e /g 17 6 /a 219 /c 0x7e /g 8 8 /a 219 /c 0x7e /g 9 8 /a 219 /c 0x7e /g 10 8 /a 219 /c 0x7e /g 11 8 /a 219 /c 0x7e /g 12 8 /a 219 /c 0x7e /g 13 8 /a 219 /c 0x7e /g 14 8 /a 219 /c 0x7e /g 15 8 /a 219 /c 0x7e /g 16 8 /a 219 /c 0x7e /g 17 8 /a 219 /c 0x7e /g 18 8 /a 219 /c 0x7e /g 18 9 /a 219 /c 0x7e /g 17 9 /a 219 /c 0x7e /g 16 9 /a 219 /c 0x7e /g 15 9 /a 219 /c 0x7e /g 14 9 /a 219 /c 0x7e /g 13 9 /a 219 /c 0x7e /g 11 9 /a 219 /c 0x7e /g 12 9 /a 219 /c 0x7e /g 10 9 /a 219 /c 0x7e /g 9 9 /a 219 /c 0x7e /g 8 9 /a 219 /c 0x7e /g 17 10 /a 219 /c 0x7e /g 9 10 /a 219 /c 0x7e /g 10 10 /a 219 /c 0x7e /g 11 10 /a 219 /c 0x7e /g 12 10 /a 219 /c 0x7e /g 13 10 /a 219 /c 0x7e /g 14 10 /a 219 /c 0x7e /g 15 10 /a 219 /c 0x7e /g 17 10 /a 219 /c 0x7e /g 16 10 /a 219 /c 0x7e /g 15 11 /a 219 /c 0x7e /g 14 11 /a 219 /c 0x7e /g 13 11 /a 219 /c 0x7e /g 12 11 /a 219 /c 0x7e /g 11 11 /a 219
call :reset
goto:eof
:reset
set move=%max_G%
goto:start


:virusboom
cls 
title Virus installation initiated!
color 02
echo Warning-Complete File Corruption imminent.
timeout /t 3 /nobreak >nul
CLS
echo Complete file corruption and computer shutdown in 10
timeout /t 1 /nobreak >nul
ClS
echo Complete file corruption and computer shutdown in 9
timeout /t 1 /nobreak >nul
ClS
echo Complete file corruption and computer shutdown in 8
timeout /t 1 /nobreak >nul
CLS
echo Complete file corruption and computer shutdown in 7
timeout /t 1 /nobreak >nul
CLS
echo Complete file corruption and computer shutdown in 6
timeout /t 1 /nobreak >nul
CLS
echo Complete file corruption and computer shutdown in 5
timeout /t 1 /nobreak >nul
CLS
echo Complete file corruption and computer shutdown in 4
timeout /t 1 /nobreak >nul
CLS
echo Complete file corruption and computer shutdown in 3
timeout /t 1 /nobreak >nul
CLS
echo Complete file corruption and computer shutdown in 2
timeout /t 1 /nobreak >nul
CLS
echo Complete file corruption and computer shutdown in 1
timeout /t 1 /nobreak >nul
CLS
echo File corruption and computer shutdown initiated
timeout /t 3 /nobreak >nul
CLS
echo Corrupting Critical System Files...
echo del* *
timeout /t 2 /nobreak >nul
echo The System cannot find the file specified.
echo:
echo:
echo:
echo:
echo:
echo Corrupting Root Partition...
echo del C:\Windows
timeout /t 2 /nobreak >nul
echo Deletion Successful!
echo:
echo:
echo:
echo:
echo:
echo:
echo:
echo Disabling Windows Firewall...
echo Killing all processes...
timeout /t 2 /nobreak >nul
echo Allowing virus to boot from startup...
timeout /t 2 /nobreak >nul
echo:
echo:
echo:
echo:
echo:
echo Virus has been executed successfully!
echo:
echo:
echo Goodbye!
exit


:codename-death
call codename-death.bat
goto :main





:google
cls 
start www.google.com
echo Welcome to Google, find something cool
ping localhost -n 4 >nul
goto :main

:coolmath
cls 
start www.coolmathgames.com
echo Welcome to Coolmath Games, this shit bumped in school
ping localhost -n 4 >nul
goto :main


:github
cls 
start www.github.com
echo Welcome to Github, code something cool!
ping localhost -n 4 >nul
goto :main

:eelslap
cls 
start www.eelslap.com/
echo Welcome to eelslap, slap this guy!
ping localhost -n 4 >nul
goto :main

:eelslap
cls 
start www.weirdorconfusing.com/
echo Welcome to Weird or confusing, idk just buy something
ping localhost -n 4 >nul
goto :main


:failpass
cls
title Password failed after %numtries%
echo To many tries, sorry
echo Returning to main menu
PING localhost -n 4 >NUL
goto :main

:right
cls
title Password Accepted
echo Opening folder...
PING localhost -n 4 >NUL 
@explorer %lockedfile%


:cleaner
title IceTools - PC Cleanup
cls
attrib -h -s /D /S * >>tidy.log
echo Doing magic...
PING localhost -n 4 >NUL
del /F/S/Q *.lnk >>tidy.log
PING localhost -n 3 >NUL
cls 
echo All done!
set /p twochoice="Would you like to return to the main menu? [yes/no] "
if /I "%twochoice%" EQU "yes" goto :main
if /I "%twochoice%" EQU "no" goto :bye




:bye
cls
title Thank you for using IceTools
echo Thank you for using IceTools
echo I will now close
PING localhost -n 4 >NUL
exit

:looper
title Ping of Death Loop
ping %leip% -l 65500 -w 1 -n 1
goto :looper