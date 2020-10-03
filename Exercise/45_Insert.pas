(* Procedure Insert(var S : String; Source : String; Index : Integer);
   This function will insert a string of any length into a source string 
   starting from an index character. The string S will be inserted into 
   string Source starting from the index character Index. No characters 
   will be deleted from the string except if the resulting string is
   longer than 255 characters. In this case, the trailing characters 
   will be truncated to fit a 255-character string. *)

Program Lesson10_Program5;

Var
	S : String;

Begin
	S := 'Hey! How are you?';
	Insert(' Max', S, 4);
	Write(S);
	{ 'Hey Max! How are you?' }
End.