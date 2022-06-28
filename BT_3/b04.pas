Uses crt;
Var N,i,S : longint;
Begin
	Clrscr;
	Write('Nhap vao gia tri cua N: '); Readln(N);
	S:=0;
	For i:=1 to N do S:=S+i;
	Writeln('Ket qua la :',S);
	Readln; 
End.
