(* Function Concat(s1 [, s2, s3...sn] : String) : String;
   Concatenates 2 or more strings depending how long is the 
   argument expression. Try to make sure not to exceed the 
   limit of 255 characters when concatening strings as it 
   will result in truncation. This function can also be 
   obtained by using the plus (+) operator between strings
   that need to be concatenated. *)

Program Lesson10_Program6;

Var
	S1, S2 : String;

Begin
	S1 := 'Hey!';
	S2 := ' How are you?';
	Write(Concat(S1, S2)); { 'Hey! How are you?' }
End.
(*is the same
Var
	S1, S2 : String;
Begin
	S1 := 'Hey!';
	S2 := ' How are you?';
	Write(S1 + S2); { 'Hey! How are you?' }
End. *)