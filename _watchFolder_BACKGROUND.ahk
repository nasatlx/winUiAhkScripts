#Include %A_ScriptDir%\_tf_textLib.ahk
#Include %A_ScriptDir%\_WatchFolder_LIB.ahk


#Persistent

;WatchDirectory("C:\temp\*|.txt\|.ini\|\a","ReportChanges")
;WatchFolders=C:\Temp*|%A_Temp%*|%A_Desktop%|%A_DesktopCommon%|%A_MyDocuments%*|%A_ScriptDir%|%A_WinDir%*
; WatchFolder(Folder, UserFunc[, SubTree := False[, Watch := 3]])
WatchFolder("C:\Users\1\Desktop\","myFunc")
return



myFunc(Folder, Changes) 
{


;(Folder, Actions[Change.Action], Change.Name, Change.IsDir, Change.OldName, ""), "Vis")


		for k, change in Changes
        
        if (change.action = 1 or change.action = 4) 
		{
		
		
		objectName:=Change.Name
		
		if(checkExtension(objectName))
		{
		objNameNewLine=%objectName%`n
		
		if(countLines("C:\Users\1\Desktop\rescents.txt"))
		{
	;FileRead, MyContents, C:\MyTextFile.txt ;read the contents of the text file
	file := FileOpen("C:\Users\1\Desktop\rescents.txt", "w") ;this wipes out all text in the file and overwrites it as a blank .txt file
	file.write("") ;this writes "ThisIsTheNewText" to the text file (without the quotes)
	file.close() ;this closes the file
		}
		
		FilePrepend(objNameNewLine, "C:\Users\1\Desktop\rescents.txt")
		return
        }
		return
		
		}
		
		
		else
		{
		return
		}
		
		
}


FilePrepend( Text, Filename ) { 
    file:= FileOpen(Filename, "rw")
    text .= File.Read()
    file.pos:=0
    File.Write(text)
    File.Close()
}

checkExtension(x)
{
		item2 := StrSplit(x,.)
		extension:=item2[item2.Length()]

if(extension=="txt")
{
return true
}
else
return false
}

countLines(x)
{

FileRead, Text, %x%
Loop, Parse, Text, `n, `r
    Lines := A_Index
number:=Lines+0.0
if(number<10)
return false
else
return true
}

		
		
		