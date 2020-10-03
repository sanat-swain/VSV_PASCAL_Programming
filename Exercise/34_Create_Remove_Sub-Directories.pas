Program Lesson8_Program6;
Uses
	WinDos, Dos; { note the inclusion of the 'windos.tpu' library }
Var
	NewDir : PathStr; { for searching the dir and create a new one, if it does not exist}
	     F : Text;

Begin
	{ search for the dir }
	NewDir := FSearch('C:\Pascal Programming', GetEnv(''));
	{ create a new one, if it does not exist }
	If NewDir = '' Then
		CreateDir('C:\Pascal Programming');
	Assign(F,'C:\Pascal Programming\pascal-programming.txt');
	{$I-} ReWrite(F); {$I+} { disable and enable back again I/O error checking }
	{ write to text file }
	Writeln(F,'http://pascal-programming.info/');
	{$I-} Close(F); {$I+}
End.