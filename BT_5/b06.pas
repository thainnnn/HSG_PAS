Uses Crt;

Type Mang = ARRAY[1..10,1..10] Of Integer;
// 
Var A, B : Mang;
	m, n, i, j : Integer;

procedure Nhap;
begin
	clrscr;
	Write('Nhap so dong m: '); Readln(m);
	Write('Nhap so cot n: '); Readln(n);

	For i:=1 To m Do
		For j:=1 To n Do
			Begin
				Write('A[', i,', ', j, '] = '); 
				Readln(A[i,j]);
			End;

end;

procedure Xuli;
begin
	For i:=1 To m Do
		For j:=1 To n Do 
			B[j,i] := A[i,j];

end;

procedure Xuat;
begin
	For j := 1 To n Do
		Begin
			For i := 1 To m Do 
				Write(B[j,i], ' ');
			Writeln;
		End;
	Readln;

end;

Begin
	Nhap;
	Xuli;
	Xuat;

End.