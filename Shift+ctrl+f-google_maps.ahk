^+f::
{

Gui, Add, Text,, From:
Gui, Add, Text,, To:
Gui, Add, Edit,w350 vFirstName ym
Gui, Add, Edit,w350 vLastName
Gui, Add, Button,w200 default, OK
Gui, Show,w400, Google Maps

return  ; End of auto-execute section. The script is idle until the user does something.



GuiClose:
GuiEscape:
ButtonOK:
Gui, Submit  ; Save the input from the user to each control's associated variable.

	
	If(FirstName="")
	{
	Gui, Destroy
	}
	Else
	{
	
	
	If(LastName="")
	{
	Run www.google.com/maps?&q=%FirstName% 
	}
	Else
	{

	Run www.google.com/maps?&q=%FirstName% to %LastName%
	}
	
	
	}
	

	
		
	Gui, Destroy
	Return

}