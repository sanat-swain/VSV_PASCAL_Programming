Program lesson4_Program2;
Uses Crt;
Var YN : String;

Begin
	Writeln('Y(YES) or N(NO)?');
	Repeat { repeat the code for at least one time }
		YN := Readkey;
		If YN = 'y' Then Halt; { Halt - exit }
		If YN = 'n' Then Writeln('Why not? Exiting...');
		Delay(1800); { wait a second plus 800 milliseconds }
	Until (YN = 'y') OR (YN = 'n');
End.