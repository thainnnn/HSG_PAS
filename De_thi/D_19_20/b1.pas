uses crt;

var a, b: byte;

procedure Nhap;
begin
	repeat
		write('Nhap a, b: '); 
		readln(a, b);
	until ((a > 3) and (a < 53)) and ((b > 59) and (b < 122));
end;

procedure Yc1;
var i, d : byte;
begin
	d := 0;
	write('Cac so le chia het cho 3 la: ');			  	
	for i := a to b do	
		if (i mod 2 = 1) and (i mod 3 = 0) then
			begin
				write(i, #32);
				inc(d); 
			end;
	writeln;
	writeln('Co tat ca: ', d, ' so le chia het cho 3');		
end;

procedure Yc2;
var i, d, m : byte;
begin
	d := 0;
	write('Cac so chinh phuong la: ');
	for i := a to b do
		begin
			m := sqr(trunc(sqrt(i)));
			if (m = i) and (m > a) and (m < b) then 
				begin
					write(i, #32);
					inc(d);
				end;	
		end;
		
	writeln;
	writeln('Co tat ca: ', d, ' so chinh phuong');
end;

procedure Yc3;
var a1, b1 : byte;
begin
	a1 := a;
	b1 := b;
	while b1 <> a1 do
		begin
			if a1 > b1 then
				a1 := a1 - b1
			else
				b1 := b1 - a1;			
		end;
 
	write('Dang toi gian cua phan so x/ y la: ', a div b1, '/', b div b1);

end;

begin
	Nhap;
	Yc1;
	Yc2;
	Yc3;
end.
