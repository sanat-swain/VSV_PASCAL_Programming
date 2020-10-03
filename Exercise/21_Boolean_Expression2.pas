Program Lesson6_Program6;
Var quit : Boolean;
    a    : String;

Begin
	Repeat
		Writeln('Type ''exit'' to quit:');
		Readln(a);
		If a = 'exit' Then
		quit := True;
	Until quit = True;
End.