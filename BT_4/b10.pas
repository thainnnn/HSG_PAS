uses crt;

var m, n : longint;

procedure Nhap;
begin
	write('Nhap m, n: '); readln(m,n);
end;

Function A(m, n : longint) : longint;
begin
	if m = 0 then
		A := n + 1 else
		if n = 0 then
			A := A(m - 1, 1) else
				if (m > 0) and (n > 0) then
					A := A(m - 1, A(m, n - 1));
end;

procedure Xuat;
begin
	writeln('KQ = ', A(m, n));
	readln;
end;

begin
	Nhap;
	Xuat;
end.