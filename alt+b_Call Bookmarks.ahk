!b::
IfWinActive Bookmarks
{
WinClose Bookmarks
return
}
else
{
Run, %A_ScriptDir%\_bookmarks_GUI.ahk
return
}


#IfWinActive Bookmarks
{
Tab::Send {Tab}{Down}
return
}
