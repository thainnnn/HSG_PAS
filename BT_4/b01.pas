uses crt;

Var a, b:Real;

Function Max(x ,y:Real) : Real;
Begin
	If x > y Then Max := x Else Max := y;
End;

Begin

	Write('Nhap a = '); Readln(a);

	Write('Nhap b = '); Readln(b);

	Writeln('So lon nhat trong 2 so la: ', Max(a,b):0:2);

	Readln;

End.