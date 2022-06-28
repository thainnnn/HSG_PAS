uses crt;

var n, S : longint;

procedure Nhap;
begin
	write('Nhap n: '); readln(n);
end;

Function Tong (n : integer) : longint;
var i, s1 : integer;
begin
	s1 := 1;
	for i := 1 to n do s1 := s1 * i;
	Tong := s1;
end;

procedure Xuat;
begin
	writeln('KQ = ', S);
end;

BEGIN
	clrscr;
	Nhap;
	S := Tong(n);
	Xuat;
	readln;
END.