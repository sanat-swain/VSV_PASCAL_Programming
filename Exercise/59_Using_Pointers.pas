Program Pointers_Example;
Var
	int_ptr : ^Integer;

Begin
	new(int_ptr);
	int_ptr^ := 50;
	Writeln('The pointer is pointing to a memory location storing', int_ptr^);
	int_ptr^ := int_ptr^ + 1;
	Writeln('Now it is increased by 1:', int_ptr^);
	dispose(int_ptr^);
	Writeln('The pointer has no more significance: ', int_ptr^);
End.