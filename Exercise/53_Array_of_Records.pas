(* Records may be stored in arrays and this will become very useful 
   and it is not that difficult to manage. We will use an array of 
   records to store a number of different books and by using this 
   example, it will be immensely indicative to learn how to use them.
   In the following example I will use the procedures above to store 
   10 different books from input and then output only one chosen record 
   to display it back to screen in order to demonstrate how to access 
   a record from an array. *)

Program Lesson11_Program4;

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

Var
	bookRecArray : Array[1..10] of TBookRec;
	i 	     : 1..10;

Begin
	For i := 1 to 10 do
		EnterNewBook(bookRecArray[i]);
	Writeln('Thanks for entering the book details');
	Write('Now choose a record to display from 1 to 10: ');
	Readln(i);
	Writeln('Here are the book details of record #',i,':');
	Writeln;
	Writeln('Title: ', bookRecArray[i].Title);
	Writeln('Author: ', bookRecArray[i].Author);
	Writeln('ISBN: ', bookRecArray[i].ISBN);
	Writeln('Price: ', bookRecArray[i].Price);
	Readln;
End.