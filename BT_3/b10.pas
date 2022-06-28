Uses crt;
Var a,b,c : Word;
Begin
	For a:=1 To 9 Do
		For b:=0 To 9 Do
			For c:=0 To 9 Do
				If (100*a + 10*b + c)=(a*a*a + b*b*b + c*c*c) Then	Writeln(a,b,c); 
	Readln;
End.
