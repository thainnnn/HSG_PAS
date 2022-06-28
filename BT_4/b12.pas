uses crt;

var m, n : longint;

procedure Nhap;
begin
	write('Nhap m, n: '); readln(m,n);
end;

Function U(a, b : longint) : longint;
begin
	if a = 0 then U := b else
		if b = 0 then U := a else
			U := U(b, a mod b);	

end;


procedure Xuat;
begin
	writeln('KQ = ', U(m, n));
end;

begin
	Nhap;
	Xuat;
end.