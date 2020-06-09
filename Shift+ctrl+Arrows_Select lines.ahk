~LShift::
if (A_PriorHotkey <> "~LShift" or A_TimeSincePriorHotkey > 400 or A_TimeSincePriorHotkey < 100 )
{
    ; Too much time between presses, so this isn't a double-press.
    KeyWait, RControl
    return
}
Send, {End} 
Send, {SHIFT}+{Home}
return
return



~RShift::
if (A_PriorHotkey <> "~RShift" or A_TimeSincePriorHotkey > 400 or A_TimeSincePriorHotkey < 100 )
{
    ; Too much time between presses, so this isn't a double-press.
    ;KeyWait, RControl
    return
}
Send, {End} 
Send, {SHIFT}+{Home}
return


;%A_CaretX%


