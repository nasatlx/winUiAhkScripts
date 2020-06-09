^+n::
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




   InputBox, UserInput, New Folder, , , 400, 100
   If ErrorLevel
        Return


	If(UserInput="")
	{
	
	FileName=newFolder_%date%
	
	}
	Else
	{
	FileName=%UserInput%
	
	}
	
	IfInString, FileName, %Needle% ;--search for extension
	{
	FileCreateDir, %FullPath%\%FileName%

	var= %FullPath%\%FileName%

	Run %var%
	return
	}
	
	IfNotInString, FileName, %Needle%
	{
	

	FileCreateDir, %FullPath%\%FileName%
	var= %FullPath%\%FileName%
	objNameNewLine=%var%`n
	FilePrepend(objNameNewLine, "C:\Users\1\Desktop\rescents.txt")


	Run %var%
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