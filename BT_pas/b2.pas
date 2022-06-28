uses crt;

var n, i, s : longint;
	s1 : real;
BEGIN
	repeat
	write('Nhap so n: '); readln(n);
	until n > 0;
	s := 0;
	for i := 1 to n do
		s := s + i;
	writeln('S0 = ',s);

	s1 := 0;
	for i := 1 to n do
		s1 := s1 + 1 / i;
	writeln('S1 = ',s1:0:2);

	s := 0;
	for i := 1 to n do
		s := s + SQR(i);
	writeln('S2 = ',s);

	readln;
END.