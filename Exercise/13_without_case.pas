Program Program1a_Lesson5;
Uses Crt;

Label Return; { used with a goto statement; not recommended }

Var
	SEL : Integer;
	YN : Char;

Begin
	Return: Clrscr;
	Writeln('[1]. PLAY GAME');
	WRITELN('[2]. LOAD GAME');
	WRITELN('[3]. MULTIPLAYER');
	WRITELN('[4]. EXIT GAME');
	Writeln('note: Do not press anything except');
	Writeln('numbers; otherwise an error occurs!');
	Readln(SEL);

	If SEL = 1 Then
	Begin
		Writeln('You will soon be able to create');
		Writeln('games using Pascal Programming :-)');
		Delay(2000);
		Goto Return;
	End;

	If SEL = 2 Then
	Begin
		Writeln('Ahhh... no saved games');
		Delay(2000);
		Goto Return;
	End;

	If SEL = 3 Then
	Begin
		Writeln('networking or 2 players?');
		Delay(2000);
		Goto Return;
	End;

	If SEL = 4 Then
	Begin
		Writeln('Are you sure you want to Exit?');
		YN := Readkey;
		If YN = 'y' Then
		Begin
			Writeln('Good Bye...');
			Delay(1000);
			Halt; {EXIT PROGRAM}
		End;

		If YN = 'n' Then
			Goto Return;
	End;
End.