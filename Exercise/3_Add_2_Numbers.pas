(* In the following program, the computer must prompt the user to enter a 
  number, then the latter is addedto the second number input by the user. *)

Program Lesson1_Program3;
Var
Num1, Num2, Sum : Integer;
Begin {no semicolon}
	Write('Input number 1:');
	Readln(Num1);
	Writeln('Input number 2:');
	Readln(Num2);
	Sum := Num1 + Num2; {addition}
	Writeln(Sum);
	Readln;
End.