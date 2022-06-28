uses crt;

var A : array[1..100] of longint;
	i, j, m, n : longint;

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
	for i := 1 to n - 1 do
		for j := i + 1 to n do
			if A[i] > A[j] then
				begin
					m := A[j];
					A[j] := A[i];
					A[i] := m;
				end;	
end;

procedure Xuat;
begin
	for i := 1 to n do
	begin
		write(A[i], '  '); 
	end;
	readln;
end;

begin
	Nhap;
	Xuli;
	Xuat;
end.
