uses crt;

var
	x, y, d, i, m : integer;

procedure Nhap;
begin
    repeat
		write('Nhap x, y: '); readln(x, y);
	until ((4 <= x) and (x < 53)) and ((59 < y) and (y <= 121));
end;

procedure Yc1;
begin
    write('Cac so le chia het cho 3 la: ');
	d := 0;
	for i := x to y do
		if (i mod 2 = 1) and (i mod 3 = 0) then
			begin
				write(i, #32);
				d := d + 1;
			end;
	writeln;
	writeln('Co ', d, ' so theo yeu cau de bai');

end;

procedure Yc2;
begin
    d := 0;
	write('Cac so chinh phuong la: ');
	for i := x to y do
        begin
            m := sqr(trunc(sqrt(i)));
            if (m = i) and (m > x) and (m < y) then
                begin
                    write(m, #32);
                    d := d + 1
                end;
        end;
    writeln;
	writeln('Co ', d, ' so chinh phuong');

end;

BEGIN
    Nhap;
    Yc1;
    Yc2;
END.
