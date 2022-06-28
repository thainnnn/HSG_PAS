Uses crt;

Procedure Khung(x1,y1,x2,y2:Integer);

Var i,j:Integer;

Begin
	Gotoxy(x1,y1); Write(#218); {Vẽ é}
	Gotoxy(x1,y2); Write(#192); {Vẽ ë}
	{Vẽ 2 viền ngang của khung}

	For i:=x1+1 To x2-1 do
		Begin
			Gotoxy(i,y1); Write(#196);
			Gotoxy(i,y2); Write(#196);
		End;

	Gotoxy(x2,y1); Write(#191); {Vẽ ù}
	Gotoxy(x2,y2); Write(#217); {Vẽ û}

	{Vẽ 2 viền dọc của khung}

	For j:=y1+1 To y2-1 do

		Begin
			Gotoxy(x1,j); Write(#179);
			Gotoxy(x2,j); Write(#179);
		End;
End;

Begin
	Clrscr;
	Khung(10,5,40,20);
	Readln;

End.