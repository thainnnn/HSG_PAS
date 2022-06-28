Uses crt;
Var a,b,aa,bb:integer;
Begin
	Write('Nhap a : '); Readln(a);
	Write('Nhap b : '); Readln(b);
	aa:=a; bb:=b;
	While aa<>bb Do
		Begin
			If aa>bb Then aa:=aa-bb Else	bb:=bb-aa;
		End;
	Writeln('USCLN= ',aa);
	Writeln('BSCNN= ',a*b DIV aa);
	Readln; 
End.
