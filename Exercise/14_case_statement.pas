Program Program1b_Lesson5;
Uses Crt;

Label Return; {use of the goto statement is not recommended.. avoid it}

Var
	SEL : Integer;
	YN : Char;

Begin
	Return:Clrscr;
	Writeln('[1].PLAY GAME');
	WRITELN('[2].LOAD GAME');
	WRITELN('[3].MULTIPLAYER');
	WRITELN('[4].EXIT GAME');
	Writeln('note: Do not press anything except');
	Writeln('numbers; otherwise an error occurs!');
	Readln(SEL);

Case SEL of
	1 : Begin
		Writeln('You will soon be able to create');
		Writeln('games using Pascal Programming :-)');
		Delay(2000);
		Goto Return;
	    End;

	2 : Begin
		Writeln('Ahhh... no saved games');
		Delay(2000);
		Goto Return;
	    End;

	3 : Begin
		Writeln('networking or 2 players?');
		Delay(2000);
		Goto Return;
	    End;

	4 : Begin
		Writeln('Exit?');
		YN := Readkey;
		Case YN of {a sort of a nested case statement}
			'y' : Begin
				Writeln('Good Bye...');
				Delay(1000);
				Halt;
			      End;
			'n' : Goto Return;
		End; {End Case 2}
	    End; {Close Conditional Expression 4}
	End; {End Case 1}
End.