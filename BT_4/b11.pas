uses crt;

var n : longint;

procedure Nhap;
begin
	write('Nhap n: '); readln(n);
end;

Function Fib(n : longint) : longint;
begin
	if (n = 1) or (n = 2) then
		Fib := 1 else
			Fib := Fib(n - 1) + Fib(n - 2);



end;

procedure Xuat;
begin
	writeln('KQ = ', Fib(n));
	readln;
end;

begin
	Nhap;
	Xuat;
end.