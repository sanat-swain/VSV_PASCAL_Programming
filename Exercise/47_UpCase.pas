(* Function UpCase(C : Char) : Char; OR Function UpCase(S : String) : String;
   Converts the character C to uppercase and returned. If the character is 
   already in uppercase form or the character is not within the range of the 
   lower case alphabet, then it is left as is. *)

Program Lesson10_Program7;

Var
	S : String;
	i : Integer;

Begin
	S := 'Hey! How are you?';
	For i := 1 to length(S) do
		S[i] := UpCase(S[i]);
	Write(S); { 'HEY! HOW ARE YOU?' }
End.

(* Although we have used a for loop to convert all characters in a String to 
   upper-case, the function UpCase() can also accept a String and will do the 
   tough job for you i.e. converts all characters to upper-case at once.

Var
	S : String;
Begin
	S := 'Hey! How are you?';
	Write(UpCase(S)); { 'HEY! HOW ARE YOU?' }
End.

The opposite of UpCase(..) is Lowercase(S) which does exactly the opposite of
the UpCase(..) - converts upper case characters to lowercase in a String. *)