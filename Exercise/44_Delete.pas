(* Procedure Delete(var S : String; Index : Integer; Count : Integer );
   Deletes a specified number of characters from the string S. The starting 
   position of deletion is from character index Index. The number of characters 
   that will be deleted is specified through Count. The new string is passed 
   back through the variable parameter S. *)

Program Lesson10_Program4;

Var
	S : String;

Begin
	S := 'Hey Max! How are you?';
	Delete(S, 4, 4); { 'Hey! How are you?' }
	Write(S);
End.