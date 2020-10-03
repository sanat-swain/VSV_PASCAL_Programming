(* We can opt to make some of the parameters of our procedures 
   as reference variables. In this case, data may flow through 
   the variable in both ways. What I am trying to say is that 
   you can pass data and get data through the procedure using 
   a variable parameter.*)

Program VAR_PARAM_EXAMPLE;

Procedure Square(Index : Integer; Var Result : Integer);
Begin
 	Result := Index * Index;
End;

Var
	Res : Integer;

Begin
	Writeln('The square of 5 is: ');
	Square(5, Res);
	Writeln(Res);
End.