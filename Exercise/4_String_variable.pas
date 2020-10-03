(* The following program is written showing an example of a 
   string variable, prompting the user to input his name  *)
Program Lesson2_Program1;
Var name, surname: String;
Begin
	write('Enter your name:');
	readln(name);
	write('Enter your surname:');
	readln(surname);
	writeln;{new line}
	writeln;{new line}
	writeln('Your full name is: ',name,' ',surname);
	readln;
End.