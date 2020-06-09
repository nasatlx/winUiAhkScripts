F1::
IfWinExist ahk_exe brave.exe
{
IfWinActive ahk_exe brave.exe

{
WinMaximize, ahk_exe brave.exe
winActivate, ahk_exe brave.exe

send,^t
return
}
else
{

WinMaximize, ahk_exe brave.exe
Winactivate,ahk_exe brave.exe
send, !d
return
}
}
else
{
Run, www.youtube.com
return

}



	
	
































