Uses crt;
Var tuoi:Byte;
Begin
	Write('Nhap vao tuoi cua mot nguoi: ');	Readln(tuoi);
	Case tuoi Of
		1..17:	Writeln('Nguoi nay la thieu nien');
		18..39:	Writeln('Nguoi nay la thanh nien');
		40..60:	Writeln('Nguoi nay la trung nien');
		Else		Writeln('Nguoi nay la lao nien');
	End;
	Readln;
End.
