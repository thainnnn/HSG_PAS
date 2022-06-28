uses crt;

var A : array[1..100] of longint;
	i, n, m : longint;

procedure Nhap;
begin
	clrscr;
	write('Nhap n: '); readln(n);
	for i := 1 to n do
		begin
			write('A[', i, '] = '); 
			readln(A[i]);
		end;
end;

procedure Xuli;
begin
	m := 0;
	for i := 1 to n do
		if A[i] < 0 then
			m := m + A[i] * A[i];
end;

procedure Xuat;
begin
	writeln('S = ', m);
	readln;
end;

begin
	Nhap;
	Xuli;
	Xuat;
end.
