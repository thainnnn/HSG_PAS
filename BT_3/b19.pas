uses crt;

var n, i, x : longint;
	s1, s2, s3, s4, s5, t2, t1 : real;

function gt(n : longint) : longint;
var i, s : longint;
begin
	s := 1;
	for i := 1 to n do
		s := s * i;
	gt := s;
end;

function mu(n : longint; x : longint) : longint;
var i, s : longint;
begin
	s := 1;
	for i := 1 to n do
		s := s * x;
	mu := s;
end;

BEGIN
	write('Nhap n: '); readln(n);
	write('Nhap x: '); readln(x);
	{___________________________________}
	writeln(gt(n));
	s1 := 0;
	for i := 1 to n do
		s1 := s1 + 1 / i;


	writeln(s1:0:2);

	{___________________________________}
	s2 := 0;
	for i := 1 to n do
		s2 := s2 + 1 / gt(i);	

	writeln(s2:0:2); 
	{___________________________________}
	s3 := 1;
	for i := 1 to n do
		s3 := s3 + mu(i, x) / gt(i);
				
	writeln('s3 = ', s3:0:2);

	{___________________________________}

	s4:= 1;
	for i := 1 to n do
		begin
			if i mod 2 = 0 then
				s4 := s4 + mu(i, x) / gt(i)  else 
					s4 := s4 - mu(i, x) / gt(i)
		end;
	writeln(s4:0:2);

	{___________________________________}
	s5 := 1;
	t1 := sin(x);
	t2 := 1;
	for i := 1 to n do
		begin
			t2 := t1 * t2;
			s5 := s5 + t2;
		end;

	writeln(s5:0:2);

	writeln('KQ = ', + s1 + s2 + s3 + s4 + s5:0:2);

	readln;

END.