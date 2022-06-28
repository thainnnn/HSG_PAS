uses crt;

var i, n: integer;
	s : real;

procedure Nhap;
begin
    repeat
		write('Nhap n (5 < n <= 100): '); readln(n);
	until (n > 5) and (n <= 100);

end;

procedure Yc;
begin	
	s := 0;
	for i := 1 to n do
		s := s + (i * (i + 1)) / ((i + 2) * (i + 3)); 

	writeln('KQ = ', s:0:2);
	readln;

end;

BEGIN
    Nhap;
    Yc;
END.
