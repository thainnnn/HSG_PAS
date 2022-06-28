Uses crt;
Var N,S,i,X : longint;
Begin
	Clrscr; 
	S:=0;

	write('Nhap N: '); readln(N);

	For i:=1 To N Do
		Begin
			Write('Nhap so nguyen X= '); Readln(X);
			S:=S+X;
		End;
	Writeln('Tong cac so duoc nhap vao la: ',S); 
	Readln;
End.
