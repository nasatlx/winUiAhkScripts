#d::

if WinActive("ahk_class WindowsForms10.Window.8.app.0.141b42a_r9_ad1")or WinActive("ahk_class Progman")
{
}

else
{
WinGetTitle, Title, A
Send #m
WinActivate,ahk_class WindowsForms10.Window.8.app.0.141b42a_r9_ad1
ControlClick, x1 y1, ahk_class WindowsForms10.Window.8.app.0.141b42a_r9_ad1
Send {Enter}
}
return


#IfWinActive ahk_class WindowsForms10.Window.8.app.0.141b42a_r9_ad1
{
#d::
WinActivate, %Title%
return
Tab:: WinActivate, ahk_class Progman
return
}


#IfWinActive ahk_class Progman
{
#d::
WinActivate, %Title%
return
Tab:: 
WinActivate,ahk_class WindowsForms10.Window.8.app.0.141b42a_r9_ad1
ControlClick, x1 y1, ahk_class WindowsForms10.Window.8.app.0.141b42a_r9_ad1
return
}