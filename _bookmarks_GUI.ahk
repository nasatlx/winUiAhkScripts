	
	Gui, Add, Edit,w400 vURLX gSearch
	Gui, Add, ListView,w400 h200 gMyListView vMyListView, File
	
	Loop Read, C:\_running scripts\_Bookmarks\Bookmarks.txt
	{

    Line%A_Index% := A_LoopReadLine
    Line0 = %A_Index%
	StringSplit, item, A_LoopReadLine, `,
	LV_Add("",item1)
	}

	
	Gui, Add, Button, Hidden Default, OK

	Gui, Show,, Bookmarks
	Send {Tab}{Down}

	GroupAdd OneNote, Bookmarks
	GroupAdd OneNote, ahk_id %GuiHwnd%

	Loop
	{
    WinWaitNotActive ahk_group OneNote
	ExitApp
    WinWaitActive ahk_group OneNote
	}

	
	
	MyListView:

	if (A_GuiEvent = "DoubleClick")
	{
	LV_GetText(RowText, A_EventInfo)
	
	TestString = %RowText%
	word_array2 := StrSplit(TestString, "*****")

	
	
	Run "C:\Program Files (x86)\BraveSoftware\Brave-Browser\Application\brave.exe"
	Sleep 500
	Send +!n
	Send !d
	uu:=word_array2[2]

	Send %uu%
	Send {Enter}
	
	
	
	
	;Run % word_array2[2]
	
	;Run %RowText%
	FIC := RowText
	}
		
	return
 

	ButtonOK:
	GuiControlGet, FocusedControl, FocusV
	if FocusedControl <> MyListView
		return
	LV_GetText(RowText, LV_GetNext(0, "Focused"))
	FIC := RowText
	
	
	
	TestString = %FIC%
	word_array := StrSplit(TestString, "*****")

	
	Run % word_array[2]
	ExitApp
	
	
	Search:
	Gui,1:submit,nohide
	LV_Delete()
	
	
	Loop, %Line0%
    {   
    StringSplit, Array, Line%A_Index%, `,
    CX=%Array1%
    ifinstring,CX,%URLX%
    LV_Add("",Array1,A_Index)
    }
	
	return
	
	
	
	

	GuiClose:
	GuiEscape:
	ExitApp
	
	
	
	
	



	

