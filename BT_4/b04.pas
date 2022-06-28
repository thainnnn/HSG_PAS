uses crt;
var x : real;
	n : byte;

Function mu(x : real; n : byte) : real;
var i : byte;
	s : real;

begin
	s := 1;
	for i := 1 to n do
		s := s * x;
	mu := s;
end;

begin
	write('Nhap so x: '); readln(x);
	write('Nhap so mu n: '); readln(n);
	writeln('x^n = ', mu(x, n):0:2);

	readln;

end.