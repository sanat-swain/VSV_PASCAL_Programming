(* There are special functions in Pascal that enable us to
read or write a text file. We will still use the readln() and writeln() in order to read and write
from/to a text file; The concept of how to read a text file is demonstrated below *)

Program Lesson8_Program1;

Var
	UserFile : Text;
	FileName, TFile : String;

Begin
	Writeln('Enter the file name (including its full path) of the text file (without the extension):');
	Readln(FileName); 
	Assign(UserFile, FileName + '.txt');{ A .txt file will be assigned to a text variable }
	Reset(UserFile); { 'Reset(x)' - means open the file x and reset cursor to the
			    beginning of file }
	Repeat
		Readln(UserFile,TFile);
		Writeln(TFile);
	Until Eof(UserFile);
	Close(UserFile);
	Readln;
End.