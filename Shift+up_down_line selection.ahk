+up::
{
Send,{end}
Send,{Shift down}{home down}{Shift up}{home up}
while GetKeyState("Shift", "P") 
{
while GetKeyState("up", "P")
{
Sleep,60
Send,{Shift down}{up down}
}
}
}
return



+down::
{
Send,{home}
Send,{Shift down}{end down}{Shift up}{end up}
while GetKeyState("Shift", "P") 
{
while GetKeyState("down", "P")
{
Sleep,60
Send,{Shift down}{down down}
}
}
}
return

