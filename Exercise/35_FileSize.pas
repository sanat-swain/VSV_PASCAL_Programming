Program Lesson8_Program7;
Var
	 f : File of Byte; { file var of type byte }
	sz : LongInt; { var for the size }

Begin
	Assign(f,'C:\anyfile.txt');
	{$I-} Reset(f); {$I+}
	If (IOResult <> 0) Then
	Begin { file found? }
		Writeln('File not found.. exiting');
		Readln;
	End Else
	Begin
		{ Return the file size in Kilobytes }
		sz := Round(FileSize(f)/1024);
		Writeln('Size of the file in Kilobytes: ',sz,' Kb');
		Readln;
		Close(f);
	End;
End.