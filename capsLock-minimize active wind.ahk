winState=0
capslock::
Winminimize, A
/*
if WinActive("ahk_class DV2ControlHost") or WinActive("ahk_class Progman") or WinActive("ahk_class ListaryMenuCls") or WinActive("ahk_class WindowsForms10.Window.8.app.0.bb8560_r13_ad1") or WinActive("ahk_class Shell_TrayWnd")
{
SetCapsLockState, OFF
return
}
if WinActive("ahk_class TMainForm")
{
winclose
return
}
if WinActive("ahk_class MozillaWindowClass")
{
winminimize
return
}


else	
{
if(winState==0 and !WinActive("ahk_class ahk_class CabinetWClass"))
{
WinGetPos, X, Y, Width, Height, A
WinGet, active_id, ID, A
SetCapsLockState, OFF
Winminimize, A
Run, C:\Users\1\Desktop
WinWait, Desktop
WinMove,Desktop,,%X%,%Y%,%Width%,%Height%,,
winState=1
return
}

else if(winState==0 and WinActive("ahk_class ahk_class CabinetWClass"))
{
winminimize
return
}
else if(winState==1)
{
winState=0
WinRestore, ahk_id %active_id%
WinMove,ahk_id %active_id%,,%X%,%Y%,%Width%,%Height%,,  
}
}
*/
