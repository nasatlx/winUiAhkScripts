#Space::

IfWinActive Recents
{
WinClose Recents
return
}


else IfWinActive ahk_class #32770
{
Run, %A_ScriptDir%\_recents_GUI.ahk b ;--b is a paremeter 
return
}

else
{
Run, %A_ScriptDir%\_recents_GUI.ahk a ;--c is a parameter
return
}


#IfWinActive Recents
{
Tab::Send {Tab}{Down}
return
}
