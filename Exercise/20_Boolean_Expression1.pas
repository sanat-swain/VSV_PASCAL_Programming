Program Lesson6_Program5;
Var
	bool : Boolean;
	A, B : Integer;

Begin
	A := 10;
	B := 20;
	bool := False;
	bool := (A = 10) OR (B = 10);
	Writeln(bool); { outputs TRUE }
	bool := (A = 10) AND (B = 10);
	Writeln(bool); { outputs FALSE }
End.