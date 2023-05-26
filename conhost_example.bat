@ECHO OFF

IF EXIST "%UserProfile%\conhost_example_booted.txt" (

  GOTO BOOTED

) ELSE (

  > "%UserProfile%\conhost_example_booted.txt" ECHO BOOTED
  Start /Separate conhost conhost_example.bat
  Exit

)

:BOOTED

DEL "%UserProfile%\conhost_example_booted.txt" /f /q

REM DO STUFF

:ROOTMENU
cls
ECHO CONHOST EXAMPLE ROOT MENU
ECHO[
ECHO 1. Robert Jene on YouTube
ECHO 2. ipconfig
ECHO 3. ping google
ECHO[

Set /P Choice=Type the option and press enter: 

IF /I "%Choice%"=="1" GOTO robertJeneYouTube
IF /I "%Choice%"=="2" GOTO doIpConfig
IF /I "%Choice%"=="3" GOTO pingYouTube

IF /I "%Choice%"=="EXIT" GOTO endOfLine

ECHO[
ECHO "%Choice%" is invalid. Please try again.
ECHO[

GOTO ROOTMENU

:robertJeneYouTube

ECHO[
start https://www.youtube.com/@RobertJene
ECHO[

PAUSE

GOTO ROOTMENU

:doIpConfig
ECHO[
ipconfig
ECHO[
PAUSE

GOTO ROOTMENU

:pingYouTube
ECHO[
ping www.youtube.com
ECHO[
PAUSE

GOTO ROOTMENU

:endOfLine

