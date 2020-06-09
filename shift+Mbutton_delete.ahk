$+MButton::
if WinActive("ahk_class CabinetWClass") or WinActive("ahk_class Progman")
{
Send {Delete}
return
}
else

IfWinExist ahk_class Chrome_WidgetWin_1
{
Send <+{Backspace}
}