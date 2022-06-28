Uses Crt;
Var N,i : Integer;
Begin
	Clrscr; 
	Write('Nhap so nguyen N: '); Readln(N);
	For i:=1 To N Do
		If N MOD i=0 Then	Write(i:5); 
	Readln;
End.
