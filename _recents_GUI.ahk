	
	Gui, Add, Edit,w400 vURLX gSearch
	Gui, Add, ListView,w400 h200 gMyListView vMyListView, File|*
	
	
	ImageListID := IL_Create(10)  ; Create an ImageList to hold 3 small icons.
	LV_SetImageList(ImageListID)  ; Assign the above ImageList to the current ListView.

	parameter=%1%
	
	Loop Read, C:\_running scripts\Rescents\Rescents.txt
	{

    	Line%A_Index% := A_LoopReadLine
    	Line0 = %A_Index%
		StringSplit, item, A_LoopReadLine, `,
		item2 := StrSplit(item1,.)
		
		extension:=item2[item2.Length()]
	
	
	
	
	
	
	
		if(extension=="txt")
		{
		IL_Add(ImageListID, "C:\_running scripts\icons\txt.ico", %A_Index%)
		}
		
		else if (extension=="ahk")
		{
		IL_Add(ImageListID, "C:\_running scripts\icons\ahk.ico", %A_Index%)
		}
		else if (extension=="pdf")
		{
		IL_Add(ImageListID, "C:\_running scripts\icons\pdf.ico", %A_Index%)
		}
		else if (extension=="exe")
		{
		IL_Add(ImageListID, "C:\_running scripts\icons\exe.ico", %A_Index%)
		}
		else if (extension=="zip")
		{ 
		IL_Add(ImageListID, "C:\_running scripts\icons\ahk.ico", %A_Index%)
		}
		
		else
		{
		IL_Add(ImageListID, "C:\_running scripts\icons\folder.ico", %A_Index%)
		}
		
		

			LV_Add("icon" A_Index,item1,item2[item2.Length()]) ;

		
		}
		


	
	
	


	
	
	
	LV_ModifyCol()

	
	Gui, Add, Button, Hidden Default, OK


	Gui, Show,, Recents
	Send {Tab}{Down}

	GroupAdd OneNote, Recents
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
	Run %RowText%
	FIC := RowText
	}
		
	return
 
 
 
 


	
	
	
	
	ButtonOK:
	GuiControlGet, FocusedControl, FocusV
	if FocusedControl <> MyListView
		return
	LV_GetText(RowText, LV_GetNext(0, "Focused"))
	FIC := RowText
	
	if(parameter=="a") ;--a parameter comes from outside script
	{
	Run %FIC%
	}
	else
	{
	

WinActivate ahk_class #32770
Send, !d
Send,{Tab 6}
ClipSaved := ClipboardAll ; save the entire clipboard to the variable ClipSaved
clipboard := ""           ; empty the clipboard (start off empty to allow ClipWait to detect when the text has arrived)
clipboard =               ; copy this text:
(
%FIC%
)
ClipWait, 1              ; wait max. 2 seconds for the clipboard to contain data. 
if (!ErrorLevel)         ; If NOT ErrorLevel, ClipWait found data on the clipboard
    Send, ^v	; paste the text
Send,{Enter}
Sleep, 100
clipboard := ClipSaved   ; restore original clipboard
ClipSaved =              ; Free the memory in case the clipboard was very large.

}
	ExitApp
	
	
	
	
	
	^Enter::
		GuiControlGet, FocusedControl, FocusV
	if FocusedControl <> MyListView
		return
	LV_GetText(RowText, LV_GetNext(0, "Focused"))
	FIC := RowText
	
	 	
	Test := FIC
	Splitpath, test, fname, fdir, fext, fnamene, fdrv ;//splits file path

	Run %fdir%

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
	
	
	
	
	



	

