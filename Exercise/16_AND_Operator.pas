Program Lesson6_Program1;
Uses Crt;
Var n1, n2 : string;

Begin
	Writeln('Enter two numbers: (''0'' & ''0'' to exit)');
	Repeat
		Write('No.1: ');
		Readln(n1);
		Write('No.2: ');
		Readln(n2);
		If (n1 = '0') AND (n2 = '0') Then Halt(0);
	Until (n1 = '0') AND (n2 = '0');
End.