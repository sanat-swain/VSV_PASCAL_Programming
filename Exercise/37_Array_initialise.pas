Program Lesson9_Program2;
Var
		  i : Integer;
	 myIntArray : Array[1..20] of Integer;
	myBoolArray : Array[1..20] of Boolean;

Begin
	For i := 1 to Length(myIntArray) do
	Begin
		myIntArray[i] := 1;
		myBoolArray[i] := True;
	End;
End.