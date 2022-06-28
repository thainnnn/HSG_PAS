uses crt;

var a, b, c : real;

Function max(a, b : real) : real;
begin
	if a < b then max := b else max := a;
end;

Function min(a, b : real) : real;
begin
	if a > b then min := b else min := a;
end;

begin
	write('Nhap a, b, c: '); readln(a, b, c);
	writeln('MAX = ',max(max(a, b), c):0:2);
	writeln('MIN = ',min(min(a, b), c):0:2);

	readln;
end.