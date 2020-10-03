Program Lesson9_Program3;

Type
	nameType = String[50];
	ageType  = 0..150; { age range: from 0 to 150 }

Var
	name : nameType;
	age  : ageType;

Begin
	Write('Enter your name: ');
	Readln(name);
	Write('Enter your age: ');
	Readln(age);
	Writeln;
	Writeln('Your name:', name);
	Writeln('Your age :', age);
	Readln;
End.