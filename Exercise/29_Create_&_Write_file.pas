Program Lesson8_Program2;
Var
	FName, Txt : String[10];
	UserFile : Text;

Begin
	FName := 'Textfile';
	Assign(UserFile, 'C:\TPWDB\EXAMPLES'+FName+'.txt'); {assign a text file}
	Rewrite(UserFile); {open the file 'fname' for writing}
	Writeln(UserFile, 'PASCAL PROGRAMMING');
	Writeln(UserFile, 'if you did not understand something,');
	Writeln(UserFile, 'please send me an email to:');
	Writeln(UserFile, 'sanat.swain@yahoo.co.uk');
	Writeln('Write some text to the file:');
	Readln(Txt);
	Writeln(UserFile, '');
	Writeln(UserFile, 'The user entered this text:');
	Writeln(UserFile, Txt);
	Close(UserFile);
End.