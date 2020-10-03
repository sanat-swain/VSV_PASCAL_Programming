(* The {$I+/-} is used to signal the compiler not to take into
 consideration I/O errors including file operations during runtime.*)

Program Lesson8_Program6;
Uses Crt;

Var
	t : Text;
	s : String;

Begin
	Assign(t, 'C:\TPWDB\EXAMPLES\ABC.DEF');
	{$I-} { disable i/o error checking }
	Reset(t);
	{$I+} { enable again i/o error checking - important }
	If (IOResult <> 0) Then
	Begin
		Writeln('The file required to be opened is not found!');
		Readln;
	End Else
	Begin
		Readln(t,s);
		Writeln('The first line of the file reads: ',s);
		Close(t);
	End;
End.