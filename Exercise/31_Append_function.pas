Program Lesson8_Program4;
Var
	UFile : Text;

Begin
	Assign(UFile, 'C:\ADDTEXT.TXT');
	Append(UFile);
	Writeln(UFile, 'How many sentences, '+
		 +'are present in this file?');
	Close(UFile);
End.