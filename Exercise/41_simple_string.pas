Program Lesson10_Program1;

Var
	myString : String;

Begin
	myString := 'Hey! How are you?';
	Writeln('The length of the string is ', byte(myString[0]));
	Write(myString[byte(myString[0])]);
	Write(' is the last character.');
End.