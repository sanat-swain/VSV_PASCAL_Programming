(* The With keyword is used in conjunction with recors to make 
   it easier to access fields. Although it helps with quick 
   field evaluation, it is rarely used since it has a lack of 
   readability and increases ambiguity when coming to distinguish 
   between a variable having the same name as one of the field 
   names of a record within a with statement. *)

Program Lesson11_Program2;

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
	With myBookRec do
	Begin
		Title := 'Some Book';
		Author := 'Victor John Saliba';
		ISBN := '0-12-345678-9';
		Price := 25.5;
	End;

	Writeln('Here are the book details:');
	Writeln;
	Writeln('Title: ', myBookRec.Title);
	Writeln('Author: ', myBookRec.Author);
	Writeln('ISBN: ', myBookRec.ISBN);
	Writeln('Price: ', myBookRec.Price);
	Readln;
End.