#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


SC029::
IfWinActive ahk_class Chrome_WidgetWin_1
{
Send,!{Left}
;Send,{Backspace}
return
}
else
{
Send, {Backspace}
}



;RButton::click right
;SC029::Send ^{Tab}
;SC029::Send ^+{Tab}
;SC029::Backspace



