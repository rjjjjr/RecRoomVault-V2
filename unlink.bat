@echo off
cd Ressources\spoof\messages
color 9
rmdir /s /q "C:\Users\%USERNAME%\AppData\LocalLow\Against Gravity"
rmdir /s /q "%LocalAppData%\Temp\RecRoom
rmdir /s /q "%LocalAppData%\Temp\Against Gravity"
del /s /q %AppData%\Microsoft\Windows\Recent\RecRoom.lnk
del /s /q "%AppData%\Microsoft\Windows\Start Menu\Programs\Steam\Rec Room.url"
%windir%\system32\reg.exe import regclean.reg
msg * Cleaned!
exit