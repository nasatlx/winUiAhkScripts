^+y::
{

Gui, Add, Text,, Single Video:
Gui, Add, Text,, Playlist:
Gui, Add, Edit,w350 vFirstName ym
Gui, Add, Edit,w350 vLastName
Gui, Add, Button,w200 default, OK
Gui, Add, Button,w50 default, MP3
Gui, Show,w400, Youtube Download

return  ; End of auto-execute section. The script is idle until the user does something.



GuiClose:
GuiEscape:

ButtonOK:
Gui, Submit  ; Save the input from the user to each control's associated variable.

	
	
	if(FirstName="" and LastName="")
	{
	Gui, Destroy
	}
	
	else if(FirstName!="" and  LastName="")
	{
	Run C:\_running scripts\ffmpeg\youtube-dl.exe -o "~/Desktop/`%(title)s.`%(ext)s" -f 18 %FirstName%
	}
	
	else if(FirstName!="" and  LastName!="")
	{
	MsgBox, "Single video or playlist?"
	}
	
	Else
	{
	Run C:\_running scripts\ffmpeg\youtube-dl.exe -o "~/Desktop/`%(title)s.`%(ext)s" -f 18 %LastName%
	
	}

	Gui, Destroy
	Return


ButtonMP3:
Gui, Submit  ; Save the input from the user to each control's associated variable.
		
	if(FirstName="" and LastName="")
	{
	Gui, Destroy
	}
	
	else if(FirstName!="" and  LastName="")
	{
	Run C:\_running scripts\ffmpeg\youtube-dl.exe -f bestaudio --ffmpeg-location "C:\_running scripts\ffmpeg\bin\ffmpeg.exe" -o "~/Desktop/`%(title)s.`%(ext)s" -x --audio-quality 4 --audio-format mp3 --add-metadata --embed-thumbnail -i %FirstName%
	}
	
	else if(FirstName!="" and  LastName!="")
	{
	MsgBox, "Single video or playlist?"
	}
	
	Else
	{
	Run C:\_running scripts\ffmpeg\youtube-dl.exe -f bestaudio --ffmpeg-location "C:\_running scripts\ffmpeg\bin\ffmpeg.exe" -o "~/Desktop/`%(title)s.`%(ext)s" -x --audio-quality 4 --audio-format mp3 --add-metadata --embed-thumbnail -i %LastName%
	}
	
	
	Gui, Destroy
	Return
	}