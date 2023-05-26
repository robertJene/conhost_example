# conhost_example
This is just an example of how to have a batch file that reloads itself using conhost to get the original cmd window in Windows 11.

Reason: Windows 11 Terminal window is too big, and is not resizable without screwing up the layout of your batch file menus

lame_example.bat
this file is an example of a batch file with a menu that contains a lot of text.
run it on windows 11, then resize the window by

By default, Windows 11 uses the new Terminal
https://superuser.com/questions/1778402/dynamically-change-terminal-window-size-on-win11

I tried this example: 
https://superuser.com/questions/1301373/how-can-i-tell-whether-a-batch-file-was-run-from-a-command-window

and this worked on one system, but not another
IF "%CMDCMDLINE%"=="%COMSPEC%" (
  REM Conhost is running / Windows 10
  test.bat
) ELSE (
  REM Windows Terminal / Windows 11
  Start /Separate conhost test.bat
)

~I also tried no other methods without success

conhost_example.bat
this is an example of a menu batch file with three options.
It creates a flag file, then launches itself with conhost, and deletes the flag file




