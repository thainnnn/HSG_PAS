uses crt;

var n, i : integer;
	s :	real;

begin
	repeat 
		readln(n);
	until (n > 5) and (n <= 100);

	s := 0;
	for i := 1 to n do
		s := s + (i * (i + 1)) / ((i + 2) * (i + 3));

	writeln(s:0:2);

end. 
