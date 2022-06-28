Uses Crt;

Type HESO=Array[0..20] Of Real;

Var a:HESO;
	n:Byte;
	Min,Max,epsilon:Real;

Procedure NhapDaThuc;
Var i:Byte;
Begin
	Write('Bac cua da thuc: n = '); Readln(n);
	Writeln('Nhap cac he so cua da thuc: ');
	For i:=0 To n Do
		Begin
			Write('a[',i,'] = '); Readln(a[i]);
		End;
	Writeln('Nhap doan tim nghiem [a,b]: ');
	Write('a = '); Readln(Min);
	Write('b = '); Readln(Max);
	Write('Nhap sai so cua phuong trinh: '); Readln(epsilon);
End;

{Tính giá trị của đa thức}

Function f(x:Real):Real;
Var S,tam:Real;
	i:Byte;
Begin
	S:=a[0]; tam:=1;
	For i:=1 To n Do
		Begin
			tam:=tam*x;
			S:=S+a[i]*tam;
		End;
	f:=S;
End;

Procedure TimNghiem(Min,Max:real);
Var m:Real;
Begin
	If f(Min)*f(Max)>0 Then 
		Writeln('Phuong trinh vo nghiem.') Else 
			If abs(f(Min))<epsilon Then
			   	Writeln('Nghiem la x = ',min:0:2) Else 
			   		If abs(f(Max))<epsilon Then 
			   			Writeln('Nghiem la x = ',max:0:2) Else
							Begin
								m:=(Min+Max)/2;
								If abs(f(m))<=epsilon Then 
									Writeln('Nghiem la x = ',m:0:2) Else 
										If f(Min)*f(m)<0 Then 
											TimNghiem(Min,m) Else 
												TimNghiem(m,Max);
							End;

End;

Begin
	NhapDaThuc;
	TimNghiem(Min,Max);
	Readln;

End.