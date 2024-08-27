/*
		Skrypt stworzony przez Weke...
		jezeli chcesz to sobie go edytuj
		lecz pamietaj kto jest orginalnym
		autorem tego skryptu <3 milego
	
Kanal autora: https://www.youtube.com/c/weke77
*/


#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, force
oldbutton = NULL
Menu, Tray, noStandard
Menu, Tray, Add
Menu, Tray, Add, Weke, RunWekeSite
Menu, Tray, Add, Wylacz, ExitApptray
Menu, Tray, Add
if not A_IsAdmin
	Run *RunAs "%A_ScriptFullPath%"

IfWinExist, iFrozeYou's 0.7 v2
{

}
else
{
	msgbox, Open "iFrozeYou's 0.7 v2" before opening this !
	Exitapp
	return
}
Gui, Color, 000000, Verdana
Gui, Font, s10, Bauhaus 93

Gui, Add, Text, x126 y20 cPurple center +BackgroundTrans vTextjd, select hotkey:
Gui, Add, DropDownList, x100 y40 vButtonChosse gChangeButton, F9|MButton|LButton|RButton|XButton1|XButton2|ScrollLock|Delete|Insert|Home|End|PgUp|PgDn|Up|Down|Left|Numpad0|Numpad1|Numpad2|Numpad3|Numpad4|Numpad5|Numpad6|Numpad7|Numpad8|Numpad9|NumpadDot|NumLock|NumpadDiv|NumpadMult|NumpadAdd|NumpadSub|NumpadEnter|RAlt|LAlt|LShift|RShift|q|w|e|r|t|y|u|i|o|p|a|s|d|f|g|h|j|k|l|z|x|c|v|b|n|m|0|1|2|3|4|5|6|7|8|9|none

Gui, Show, W340 H90, clumsy hotkey
return

ChangeButton:
{
	GuiControlGet, checkifnull,,ButtonChosse
	if checkifnull = none
	{
		if oldbutton = NULL
		{
			return
		}
		else
		{
			HotKey, %oldbutton%, Off
			return
		}
		return
	}
	if oldbutton = NULL
	{
		GuiControlGet, var,,ButtonChosse
		HotKey, ~%var%, StartLag
		oldbutton = %var%
	}
	else
	{
		HotKey, %oldbutton%, Off
		GuiControlGet, var,,ButtonChosse
		HotKey, ~%var%, StartLag
		oldbutton = %var%
	}
	return
}

return
BestSettingsButton:
{
	;ControlClick, Button2, iFrozeYou's 0.7 v2.2 - ITH Alpha 3
	ControlGet, var,Checked,,Button4,iFrozeYou's 0.7 v2
	loop
	{
		ControlGet, var,Checked,,Button4,iFrozeYou's 0.7 v2
		if var = 0
		{
			ControlFocus, Button4, iFrozeYou's 0.7 v2
			sleep 10
			ControlClick, Button4, iFrozeYou's 0.7 v2
			ControlClick, Button4, iFrozeYou's 0.7 v2
		}
		else
		{
			Break
		}
	}
	sleep 50
	ControlSetText, Edit2, 3000, iFrozeYou's 0.7 v2
	sleep 50
	ControlGet, var, Choice,,Edit1,iFrozeYou's 0.7 v2
	if var != outbound
	{
		ControlSetText, Edit1, outbound, iFrozeYou's 0.7 v2
	}
	msgbox, Skonczone szefunciu, milego zabijania :)
	return
}

return

ExitApptray:
{
	Exitapp
	return
}

RunWekeSite:
{
	Run, https://www.youtube.com/channel/UC26ZhUvKYHlu0Y8u3rFaOZw
	return
}
 
GuiClose:
ExitApp
return


StartLag:
{
	ControlClick, Button2, iFrozeYou's 0.7 v2
}
