#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
DetectHiddenWindows On
SetTitleMatchMode 2 
SetBatchLines, -1
#NoEnv
#SingleInstance Force
if not A_IsAdmin
    Run *RunAs "%A_ScriptFullPath%"


f9:: 
    WinGet, winid ,, A
    WinActivate, clumsy
    Sleep, 1
    SendInput, {enter}
    Sleep, 1
    WinActivate ahk_id %winid%
return


F4::
    ExitApp
return