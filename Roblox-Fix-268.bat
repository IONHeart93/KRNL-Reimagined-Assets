echo

ipconfig/flushdns

netsh winsock reset

cd %temp%

del *

choice /C:YN /M:"Would you like to Restart now? (This is Recommended for effects to take place) [Y/N]"
IF ERRORLEVEL ==1 GOTO Restart
IF ERRORLEVEL ==2 GOTO DoNothing
GOTO next

:Restart

msg *   Your Computer Will Restart Shortly
shutdown.exe /r /t 03  

:DoNothing
echo Please close me