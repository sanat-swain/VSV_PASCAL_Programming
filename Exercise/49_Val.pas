(* Procedure Val(S : String; var Val; Code : Integer);
   Converts a string to its corresponding numeric value. 
   The string paramater S is converted into a numeric value 
   and passed back through the variable paramter Val. If 
   the string to be converted is not a correct numeric value, 
   an error occurs and is returned via Code. If the conversion 
   is correct then Code is 0. *)

Program Lesson10_Program9;

Var
	S     : String;
	error : Integer;
	R     : Real;

Begin
	S := '-0.563';
	Val(S, R, error);
	If error > 0 Then
		Write('Error in conversion.')
	Else
		Write(R);
End.