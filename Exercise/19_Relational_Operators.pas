Program Lesson6_Program4;
Var age : Integer;

Begin
	Repeat
		Write('Enter age (1 - 100): ');
		Readln(age);
		If (age < 1) Then
			Writeln('Age cannot be less than 1...')
		Else If (age > 100) Then
			Writeln('Age cannot be greater than 100...');
	Until (age > 0) AND (age <= 100); { loop ends when }
End.