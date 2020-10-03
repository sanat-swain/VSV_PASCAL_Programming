(* Function Pos(SubString : String; S : String) : Byte;
   This function will search for the string SubString within the string S. 
   If the sub-string is not found, then the function would return 0. If on 
   the other hand the sub-string is found, then the index integer value of 
   the first character of the main string that matches the character of the
   sub-string is returned. *)

Program Lesson10_Program2;

Var
	S : String;

Begin
	S := 'Hey there! How are you?';
	Write('The word "How" is found at char index ');
	Writeln(Pos('How', S));
	If Pos('Why', S) <= 0 Then
		Writeln('"Why" is not found.');
End.