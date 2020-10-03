Program Lesson11_Program3;

Type
	Str25 = String[25];
	TBookRec =
		Record
			Title, Author, ISBN : Str25;
			Price : Real;
		End;

Procedure EnterNewBook(var newBook : TBookRec);
Begin
	Writeln('Please enter the book details: ');
	Write('Book Name: ');
	Readln(newBook.Title);
	Write('Author: ');
	Readln(newBook.Author);
	Write('ISBN: ');
	Readln(newBook.ISBN);
	Write('Price: ');
	Readln(newBook.Price);
End;

Procedure DisplayBookDetails(myBookRec : TBookRec);
Begin
	Writeln('Here are the book details:');
	Writeln;
	Writeln('Title: ', myBookRec.Title);
	Writeln('Author: ', myBookRec.Author);
	Writeln('ISBN: ', myBookRec.ISBN);
	Writeln('Price: ', myBookRec.Price);
End;

Var
	bookRec : TBookRec;

Begin
	EnterNewBook(bookRec);
	Writeln('Thanks for entering the book details');
	DisplayBookDetails(bookRec);
	Readln;
End.