^+g::
{


   InputBox, UserInput, Search Google, , , 400, 100
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
	
	Run www.google.com/search?&q=%FileName%
	
	Return

}