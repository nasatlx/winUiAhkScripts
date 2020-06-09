^+m::
{
FullPath=""
extension=.txt
Needle=.ahk
date=%A_YYYY%-%A_MM%-%A_DD%_%A_Hour%-%A_Min%-%A_Sec%


if WinActive("ahk_class CabinetWClass") 
{
	;Get full path from open Explorer window
    WinGetText, FullPath, A

    ; Clean up result
    StringReplace, FullPath, FullPath, `r, , all
    FullPath := RegExReplace(FullPath, "^.*`nAddress: ([^`n]+)`n.*$", "$1")



aa=%FullPath% ; need to be put in to variable to avoid "Variable contains illegal character errror"

If(aa="Desktop" or aa="This PC" or aa="Downloads")
{

FullPath=C:\Users\1\Desktop
SetWorkingDir, %FullPath%

}
else if(aa="C:\")
{
MsgBox,Directory:C:\
}

else
{

SetWorkingDir, %aa%
}



If ErrorLevel
Return
}



else
{
	FullPath=C:\Users\1\Desktop
	SetWorkingDir, %FullPath%
}




   InputBox, UserInput, New File, , , 400, 100
   If ErrorLevel
        Return


	If(UserInput="")
	{
	FileName=newTextFile_%date%
	}
	Else
	{
	FileName=%UserInput%
	
	}
	
	IfInString, FileName, %Needle%
	{
    FileAppend, , %FileName%
	var= %FullPath%\%FileName%

	Run "C:\Program Files (x86)\Notepad++\notepad++.exe" "%var%"
	objNameNewLine=%var%`n
	
	FilePrepend(objNameNewLine, "C:\Users\1\Desktop\rescents.txt")
	
	return
	}
	
	
	IfNotInString, FileName, %Needle%
	{
	FileAppend, , %FileName%%extension%
	Run %FileName%%extension%
	varr=%FullPath%\%FileName%%extension%
	objNameNewLine=%varr%`n

	FilePrepend(objNameNewLine, "C:\Users\1\Desktop\rescents.txt")
 return
	}
	
	
	
	
	

	
	
    Return

}



FilePrepend( Text, Filename ) { 
    file:= FileOpen(Filename, "rw")
    text .= File.Read()
    file.pos:=0
    File.Write(text)
    File.Close()
}