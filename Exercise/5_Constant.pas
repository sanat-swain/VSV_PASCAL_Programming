{ constants keep their value or string unchanged for the whole program }
Program Lesson2_Program2;
Var
	surname: String;
Const {the reserved word 'const' is used to initialize constants}
	name = 'Victor';
Begin
	Write('Enter your surname:');
	readln(surname);
	writeln;
	writeln;
	Writeln('Your full name is: ',name,' ',surname);
	Readln;
End.