#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Recommended for catching common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

^F2::



origKlipboard=%clipboard%



clipboard=
send,^c
ClipWait




String=%clipboard%
StringTrimLeft, var, String, 0
StringTrimRight, var, String, 0
;MsgBox, %String%


fullpath=%var%
;SplitPath, %var%, name
SplitPath, fullpath, , , ,withoutExt


trimed=%withoutExt%
;MsgBox,%name%
;MsgBox,%trimed%



Send,{F2}
Send,%trimed%{+}
Send,{Enter}
clipboard=%origKlipboard%
return