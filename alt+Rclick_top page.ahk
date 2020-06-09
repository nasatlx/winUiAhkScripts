#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

GroupAdd REMOTE_DESKTOPS,  ahk_class illustrator
GroupAdd REMOTE_DESKTOPS, ahk_class Photoshop
#IfWinNotActive ahk_group REMOTE_DESKTOPS


#ifWinNotActive ahk_group REMOTE_DESKTOPS
{

!LButton::
Send,{Home}
return
}


#ifWinNotActive ahk_group REMOTE_DESKTOPS
{
!Space:: 
Send,{Home}
return
}

;#ifWinNotActive ahk_group REMOTE_DESKTOPS
;{
;^Space:: 
;Send,{Home}
;return
;}



;Menu, MyMenu, Add, Item1, MenuHandler
;Menu, MyMenu, Add, Item2, MenuHandler
;return



;#ifWinNotActive ahk_class Chrome_WidgetWin_1
;{


;$RButton Up::

;if GetKeyState("LButton","p")

;Send,{Home}
	

;else

;Send, {RButton Up}

;return



;MenuHandler:

;MsgBox,,, You selected %A_ThisMenuItem% from the menu %A_ThisMenu%.,1

;return
;}


