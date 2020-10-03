PROGRAM Test;
VAR
   x : REAL;               { x is declared to be real }
   i : INTEGER;            { i is declared to be an integer }
   c : CHAR;               { c is declared to be a character }
BEGIN
    READLN(x);             { user can type a real number, followed by
                           the return key. The value will be stored 
                           in the variable x. If the user input is
                           not a real (or integer) number, a
                           runtime error (invalid assignment) will occur. }
    READLN(i);             { user can type a integer, followed by
                           the return key. The value will be stored 
                           in the variable i. If the user input is
                           not an integer, a runtime error (invalid 
                           assignment) will occur. }
    READLN(c);             { user can type any character, followed by
                           the return key. The value will be stored in
                           the variable c and will be a character. If
                           a user enters 1, c will be the character '1'
                           not the integer 1. }
    READLN;                { user can type a single return. }
END.