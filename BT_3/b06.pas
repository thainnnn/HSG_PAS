Uses crt;
Var N,dem : Integer;
Begin
	Clrscr; 
	dem:=0;
	Repeat
		Write('Nhap vao mot so nguyen N: '); Readln(N);
		If N MOD 2 = 0 Then dem:=dem+1;
	Until N=0;
	Writeln('Cac so chan duoc nhap vao la: ',dem); 
	Readln;
End.
