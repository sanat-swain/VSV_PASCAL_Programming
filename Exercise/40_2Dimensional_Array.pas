Program Lesson9_Program5;
Uses Crt;

Type
	myRange = 1..5;
	arrayIntType = Array[myRange] of Integer;
	myFileType = File of arrayIntType;

Var
	i : myRange;
	myFile : myFileType; { the next array is 2 dimensional }
	arrayInt : Array[1..2] of arrayIntType;

Begin
	Clrscr;
	Randomize;

	For i := 1 to 5 do { or we can use Length(arrayInt[1][i]) }
	Begin
		arrayInt[1][i] := Random(1000);
		Writeln('rand num: ',arrayInt[1][i]);
	End;

	Assign(myFile, 'test.dat');
	ReWrite(myFile);
	Write(myFile, arrayInt[1]);
	Close(myFile);
	ReSet(myFile);
	Read(myFile, arrayInt[2]);
	Close(myFile);

	For i := 1 to 5 do
		Writeln(i,': ', arrayInt[2][i]);
	Readln;
End.