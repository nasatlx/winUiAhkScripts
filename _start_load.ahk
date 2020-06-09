#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
;#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.



Sleep, 10000
SetTitleMatchMode 2
DetectHiddenWindows On
DetectHiddenTexT On

Dir := "C:\_running scripts\"
Loop %Dir%\*.*
	If !WinExist(A_LoopFileName)
		Run % A_LoopFileFullPath
		Sleep, 1000

Run, "C:\_running scripts\VirtuaDesktops\VirtuaWin.exe"
;Run, "C:\_running scripts\notes.exe"


return