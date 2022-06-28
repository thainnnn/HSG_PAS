uses crt;
var n, k : longint;


Procedure Nhap;
begin
	clrscr;
	write('Nhap chinh hop chap n, k = '); readln(k, n);
end;

Function chinhhop(k, n : longint) : longint;
begin
	if (k = n) or (k = 0) then chinhhop := 1 else 
		chinhhop := chinhhop(k - 1, n - 1) + chinhhop(k, n - 1);

end;

Procedure Xuat;
begin
	writeln('Chinh hop chap ', n, ' cua ', k, ' la ', chinhhop(k, n));

end;

begin
	Nhap;
	Xuat;
end.