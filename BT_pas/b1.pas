uses crt;

var a, b, c, s, p : real;

BEGIN
	write('Nhap do dai 3 canh a, b, c: '); readln(a, b, c);

	if (a > 0) and (b > 0) and (c > 0) and (a + b > c) and (b + c > a) and (a + c > b) then
		begin
			p := (a + b + c) / 2;
			s := SQRT(p * (p - a) * (p - b) * (p - c));
			
			writeln('Co la 3 canh tam giac');
			writeln('Dien tich = ', s:0:2);
			writeln('Chu vi = ', p * 2:0:2);
		end else 
			writeln('Khong la 3 canh tam giac');

	readln;
END.