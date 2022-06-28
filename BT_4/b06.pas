Uses crt;

Var n:Integer;

Procedure PHANTICH(n:Integer);
Var i:Integer;

Begin
	i:=2;

	While n<>1 Do
		Begin
			While n MOD i = 0  Do
				Begin
					Writeln(n:10, '|', i:10);
					n := n Div i;
				End;
			i := i + 1;
		End;
		Writeln(n:10, '|');

End;

Begin
	Write('Nhap n = '); Readln(n);
	PHANTICH(n);
	Readln;
End.