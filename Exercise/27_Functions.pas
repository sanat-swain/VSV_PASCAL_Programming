(* The only difference from the procedure
is that the function always return a value at the end. Note that a procedure cannot return a
value. A function start and end in a similar way to that of a procedure. If more than one value
is required to be returned by a function, you should make use of the variable parameter. A
function can have parameters too. If you change the sub-program from procedure to a
function, of the previous program, there will be no difference in the output of the program.
Just make sure which one is best when you need to implement a sub-routine. For example, if
you don't need to return any values, a procedure can be the best option. On the other hand, if
a value should be returned after the sub-routine is executed, a function should be used
instead. *)

Program Lesson7_Program4;
Uses Crt;
Var SizeA, sizeB : Real;
              YN : Char;
           unitS : String[2];

Function PythagorasFunc(A: Real; B: Real) : Real; { The pythagoras theorem }
Begin
	PythagorasFunc := SQRT(A * A + B * B);
	{ Output: Assign the function name to the value.
	  If you forget to assign the function to the value,
	  you will get a trash value from memory }
End;

Begin
	Repeat
		Writeln;
		Write('Enter the size of side A : ');
		Readln(sizeA);
		Write('Enter the size of side B : ');
		Readln(sizeB);
		Repeat
			Write('metres or centimetres? Enter : [m or cm] ');
			Readln(unitS);
		Until (unitS = 'm') OR (unitS = 'cm');

		Writeln(PythagorasFunc(sizeA,sizeB),' ',unitS);
		Writeln;
		Write('Repeat? ');
		YN := Readkey;
	Until (YN IN ['N','n']);
End.