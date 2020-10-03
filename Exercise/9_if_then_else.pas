Program lesson4_Program2;
Uses Crt;
Var score : Integer;
    ans   : String;

Begin
	Writeln('Who has discovered the land of America ?');
	Readln(ans);
	If (ans = 'Christopher Colombus') Then
		score := score + 1;
  	Else
		Writeln('Sorry, you''ve got it wrong!');
End.