Program Lesson11_Program1;

Type
	Str25 = String[25];
	TBookRec =
		Record
			Title, Author, ISBN : Str25;
			Price : Real;
		End;
Var
	myBookRec : TBookRec;

Begin
	myBookRec.Title := 'Some Book';
	myBookRec.Author := 'Victor John Saliba';
	myBookRec.ISBN := '0-12-345678-9';
	myBookRec.Price := 25.5;

	Writeln('Here are the book details:');
	Writeln;
	Writeln('Title: ', myBookRec.Title);
	Writeln('Author: ', myBookRec.Author);
	Writeln('ISBN: ', myBookRec.ISBN);
	Writeln('Price: ', myBookRec.Price);
	Readln;
End.