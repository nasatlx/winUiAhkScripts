flag=1
flagF=0

#If GetKeyState("LAlt", "P")&& IfWinActive ahk_class Chrome_WidgetWin_1 ahk_exe brave.exe
{
Tab::
Send {LAlt down}{Tab}

return
}





#IfWinActive ahk_class Chrome_WidgetWin_1 ahk_exe brave.exe
{



LAlt & Space::
Send,{Home}
return


LAlt & WheelDown::Send,^{Tab}
LAlt & WheelUp::Send,+^{Tab}


LAlt::
{
If(flag==1)
{
flag=0
Send {Ctrl down}{LShift down}{Tab down}{Tab up}{Ctrl up}{LShift up}
return
}
Else
{
Send {Ctrl down}{Tab down}{Tab up}{Ctrl up}
flag=1
return
}




}






}

