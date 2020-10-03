(* Procedure Str(Val : Integer / LongInt / Real; var S : String);
   Converts an integer or a decimal value to a string. The value 
   parameter Val is converted into a string and passed through 
   the variable paramter S. *)

Program Lesson10_Program8;

Var
	S : String;
	i : Real;

Begin
	i := -0.563;
	Str(i, S);
	Write(S);
End.