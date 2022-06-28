uses crt;

var A : array[1..100, 1..100] of longint;
	i, j, n, m, d, x, s : longint;

procedure Nhap;
begin
	clrscr;
	write('Nhap so cot m: '); readln(m);
	write('Nhap so cot n: '); readln(n);
	for i := 1 to m do
		for j := 1 to n do 
			begin
				write('A[', i, ', ', j,  '] = '); 
				readln(A[i,j]);
			end;
	write('Nhap x: '); readln(x);
end;

procedure Xulia;
begin
	write('Vi tri: ');
	d := 0;
	for i := 1 to m do
		for j := 1 to n do
			if A[i,j] = x then
				begin
					d := d + 1;
					write(i, ' ', j, '; ');
				end;
end;

procedure Xulib;
var max : longint;
begin
	s := 0;
	for i := 1 to m do
		begin 
			max := A[i, 1];
			for j := 2 to n do
				if max < A[i, j] then
					max := A[i, j];
			s := s + max;
				
		end;
end;

procedure Xuat;
begin
	writeln('So lan xuat hien cua x trong mang: ', d);
	writeln('S = ', s);
	For i:=1 To m Do
		Begin
			For j:=1 To n Do 
				Write(A[i,j], ' ');
			Writeln;
		End;
end;

begin
	Nhap;
	Xulia;
	Xulib;
	Xuat;
end.
