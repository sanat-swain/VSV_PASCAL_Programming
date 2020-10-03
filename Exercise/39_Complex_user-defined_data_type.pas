Program Lesson9_Program4;

Type
	i = 1..5;
	myArrayDataType = Array[1..5] of Byte;
	byteFile = File of Byte; { binary file }

Var
	myArrayVar : myArrayDataType;
	myFile     : byteFile;

Begin
	Writeln('Please enter 5 numbers from (0..255): ');

	For i := 1 to Length(myArrayVar) do
		Readln(myArrayVar[i]);
	Writeln('You have entered the following numbers: ');

	For i := 1 to Length(myArrayVar)do
		Writeln('Number ',i,': ',myArrayVar[i]);

	Writeln('Now writing them to file...'); {store the numbers in a file}
	Assign(myFile, 'example.dat');
	ReWrite(byteFile);
	Write(myFile, myArrayVar[i]);
	Close(myFile);
	Writeln('Done, you may exit..');
	Readln;
End.