
#IfWinActive ahk_class Chrome_WidgetWin_1 ahk_exe brave.exe
{
#!Right::#!Right
#!Left::#!Left

!Right::Send,^{Tab}
!Left::Send,+^{Tab}

}