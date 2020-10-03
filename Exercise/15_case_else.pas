Program Program2_Lesson5;
Uses Crt;
Label Return; { avoid it }
Var YN : Char;

Begin
	Return: ClrScr;
	Writeln('Exiting?');
	YN := Readkey;
	Case YN of
		'y' : Halt;
		'n' : Begin
			Writeln('What are you going to do here, anyway?');
			Delay(2000);
			Halt;
		      End;
		Else
		Begin
			Writeln('Press either ''y'' for yes');
			Writeln('or ''n'' for no.. please try again..');
			Delay(3500);
			ClrScr;
			Goto Return;
		End;
	End; {CASE}
End. {PROGRAM}