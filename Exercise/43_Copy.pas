(* Function Copy(S : String; Index : Integer; Count : Integer) : String;
   This function will copy some characters from string S starting from character
   index Index and copies as much as Count. The copied string is then returned. *)

Program Lesson10_Program3;

Var
	S : String;

Begin
	S := 'Hey there! How are you?';
	S := Copy(S, 5, 6); { 'there!' }
	Write(S);
End.