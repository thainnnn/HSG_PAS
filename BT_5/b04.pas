uses crt;

type Mang = array[1..100] of longint;

var A : Mang;
	i, n, x : longint;

procedure Nhap;
begin
	clrscr;
	write('Nhap n: '); readln(n);
	for i := 1 to n do
		begin
			write('A[', i, '] = '); 
			readln(A[i]);
		end;
	write('Nhap x: '); readln(x);
end;

function Timkiem(x : longint; A : Mang) : byte;
begin
	for i := 1 to n do
		if A[i] = x then
			begin
				Timkiem := i;
				break;
			end else
				Timkiem := 0;
end;

procedure Xuat;
begin
	if Timkiem(x, A) > 0 then
		writeln('Vi tri cua x trong mang: ', Timkiem(x, A)) else
			writeln('X khong co trong mang');
end;

begin
	Nhap;
	Xuat;
end.
