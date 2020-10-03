(* Records can also be stored into files and this could be done 
   by using binary files. I will demonstrate storing records into 
   files by continuing from the previous example. Using binary 
   files could be very handy, fast and more reliable over text 
   files. You can't afford storing hundreths of files by using 
   text files since it becomes confusing and even slower for the
   computer to process and read/write from/to the file. 

   In the following example I will use a file of the book record 
   I have created and then store as many books as I want in the 
   file using the binary file system. Watch carefully how I will
   create the file of record and how I will perform the file I/O 
   for the binary file system. Also, I will make use of special 
   built in functions that help me position the file pointer to 
   the record I want.

   Note that with binary files, only Read and Write are allowed 
   to read/write from/to a file. *)

Program Lesson11_Program5;

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
	tempBookRec  : TBookRec;
	bookRecFile  : File of TBookRec;
	i 	     : 1..10;

Begin
	Assign(bookRecFile, 'bookrec.dat');
	ReWrite(bookRecFile);
	For i := 1 to 10 do
	Begin
		EnterNewBook(bookRecArray[i]);
		{ bookRecArray[i] now contains the book details }
		Write(bookRecFile, bookRecArray[i]);
	End;

	Close(bookRecFile);
	Writeln('Thanks for entering the book details.');
	Writeln('They are saved in a file!');
	Write('Now choose a record to display from 1 to 10: ');
	Readln(i);
	ReSet(bookRecFile);
	Seek(bookRecFile, i-1);
	Read(bookRecFile, tempBookRec);
	Close(bookRecFile);
	Writeln('Here are the book details of record #',i,':');
	Writeln;
	Writeln('Title: ', tempBookRec.Title);
	Writeln('Author: ', tempBookRec.Author);
	Writeln('ISBN: ', tempBookRec.ISBN);
	Writeln('Price: ', tempBookRec.Price);
	Readln;
End.

(* The example program above demonstrated the use of the seek function. 
It's role is to place the file pointer to the desired position. The 
first component of the file is marked as 0. So you have to keep in mind 
that if you have a counter starting from 1, you have to decrement it by 1
to obtain the actual record you want.

The seek function is very important and has an important role in binary 
file system. Here are some uses of the function and how it can be used 
effectively to obtain a particular position of the file.

Special Uses of the Seek Function:-

Seek the first record of the file
Seek(myFile, 0);

Seek the last record of the file
Seek(myFile, FileSize(myFile)-1);

Seek one position beyond the last record
Seek(myFile, FileSize(myFile));

Seek to the next position of the file from the current
Seek(myFile, FilePos(myFile)+1); *)
