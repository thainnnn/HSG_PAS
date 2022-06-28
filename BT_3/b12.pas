uses crt;

var a, b, c, x1, x2, D : real;

BEGIN
	repeat
	write('Nhap a, b, c: '); readln(a, b, c);
	until a <> 0;

	D := b*b - 4*a*c;
	
	if D < 0 then writeln('PT vo nghiem') else
		if D = 0 then writeln('PT co nghiem 2 nghiem kep: x1 = x2 = ', -b/(2*a):0:2) else
			begin
				x1 := (-b + SQRT(D)) / (2 * a);
				x2 := (-b - SQRT(D)) / (2 * a);
				writeln('PT co 2 nghiem phan biet');
				writeln('x1 = ', x1:0:2, '    x2 = ', x2:0:2);
			end;

	readln;

END.