Uses crt;
Var  x:integer;
Begin
  Write('Nhap vao mot so nguyen : ');  Readln(x);
	If x MOD 2=0 Then 
		Writeln('So vua nhap vao la so chan')
	Else
		Writeln('So vua nhap vao la so le');
	Readln;
End.
