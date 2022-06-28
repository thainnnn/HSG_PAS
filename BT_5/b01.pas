uses crt;

var A : array[1..100] of longint;
	i, n, m : integer;

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

begin
	m := A[1];
	for i := 2 to n do
		if A[i] > m then
			m := A[i];
end;

procedure Xuat;
begin
	writeln('Phan tu lon nhat: ', m);
	readln;
end;

begin
	Nhap;
	Xuli;
	Xuat;
end.
