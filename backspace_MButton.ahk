GroupAdd 3d, ahk_class 3DSMAX
GroupAdd 3d, ahk_class UnityContainerWndClass



#IfWinNotActive ahk_group 3d
{
MButton::Backspace
}


#IfWinActive ahk_group 3d
{
Space::MButton
}





#IfWinActive ahk_class UnityContainerWndClass
{
!MButton::+!LButton
}

