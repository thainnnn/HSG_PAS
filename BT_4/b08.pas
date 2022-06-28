uses crt;

var n : longint;

function s1(n : longint) : longint;
begin
	if n = 1 then s1 := 1 else
		s1 := s1(n - 1) + n;
end;

Function s2(n : longint) : real;
begin
	if n = 1 then s2 := 1 else
		s2 := 
end;

begin 
	write('Nhap n: '); readln(n);


	writeln(s1(n));
	writeln(s2(n):0:2);
	readln;
end.