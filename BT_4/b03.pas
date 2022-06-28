uses crt;

var a, b : real;

procedure Swap (a, b : real);
begin
	a := a + b;
	b := a - b;
	a := a - b;

	writeln('a = ', a:0:2);
	writeln('b = ', b:0:2);
end;

BEGIN
	write('Nhap a, b: '); readln(a, b);
	Swap(a, b);
	readln;
END.