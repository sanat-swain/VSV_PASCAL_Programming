Program Lesson8_Program3;
Var
	UFile : Text;

Begin
	Assign(UFile, 'C:\TPWDB\EXAMPLES\ADDTEXT.TXT');
	ReWrite(UFile);
	Writeln(UFile, 'How many sentences ' +
		 + 'are present in this file?');
	Close(UFile);
End.