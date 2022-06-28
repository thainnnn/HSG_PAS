Uses crt;

Var c : Char;

Function LOWCASE(c : Char) : Char;

Begin
	If c IN ['a'..'z'] Then LOWCASE := CHR(ORD(c)-32)
	Else LOWCASE := c ;
End;

Begin

	Write('Nhap ky tu c: '); Readln(c);

	Writeln('Ky tu sau doi la: ', LOWCASE(c));

	Readln;

End.