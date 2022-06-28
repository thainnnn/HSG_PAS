uses crt;

type Mang = array[1..1000000] of longint;

var A : Mang;
	i, j, n, x : longint;


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

procedure SX;
var m : longint;
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

function Timkiem(n, x : longint; A : Mang) : byte;
var dau, giua, cuoi : longint;
	run : boolean;
begin
	run := false;	
	dau := 1;
	cuoi := n;
	While (dau <= cuoi) and (not run) do
		begin
			giua := (dau + cuoi) div 2;
			if A[giua] = x then
				run := true else
					if x > A[giua] then 
						dau := giua + 1 else
								cuoi := giua - 1;
							
		end;

	if run then Timkiem := giua else
		Timkiem := 0;
end;

procedure Xuat;
begin
	if Timkiem(n, x, A) > 0 then
		writeln('Vi tri cua x trong mang: ', Timkiem(n, x, A)) else
			writeln('X khong co trong mang');
end;

begin
	Nhap;
	SX;
	Xuat;
end.
