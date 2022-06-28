uses crt;

var x, y : integer;

procedure Yc1;
var i, number : integer;
begin
	number := 0;
	writeln('Danh sach: ');
	for i := x to y do
		if (i mod 2 = 1) and (i mod 3 = 0) then
			begin
				write(i, ' ');
				inc(number);
			end;
	writeln;
	writeln('So lan xuat hien: ', number);
end;

procedure Yc2;
var i, number : integer;
begin
	number := 0;
	writeln('Danh sach: ');
	for i := x + 1 to y - 1 do
		if sqr(trunc(sqrt(i))) = i then
			begin
				write(i, ' ');
				inc(number);
			end;
	writeln;
	writeln('So lan xuat hien: ', number);

end;

begin
	repeat
		readln(x, y);
	until ((4 <= x) and (x < 53)) and ((59 < y) and (y <= 121));

	Yc1();
	Yc2();
end. 
