PROGRAM Test;
VAR
   x : REAL;
   i : INTEGER;
   j : INTEGER;
BEGIN
    x := 12.449;
    i := 10;
    j := -300;
    WRITE('This is some text');   
    WRITELN('Unformatted integer ',i);
    WRITELN('Unformatted integer computation ',i*i);
    WRITELN('formatted integer',i:4); 
    (* WRITE(I:num);	I is an integer and num indicates the total positions to be used. 
                        If the value contained in the variable I needs more digits, num is ignored.*)
    WRITELN('formatted integer',j:4); 
    WRITELN('Unformatted real ',x);
    WRITE('Formatted real');
    WRITE(x:8:2); 
    (* WRITELN(X:num1:num2); X is a real variable, num1 is the total amount of digits to use (including sign and period) 
                             and num2 is the number of digits after the period.*)
    WRITELN('all in one line');
END.