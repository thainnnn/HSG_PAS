uses crt;

var n : longint;
	d, x : Word;
BEGIN
	repeat
		write('Nhap so n: '); readln(n);
	until n > 0;
	x := 0;
	d := 0;

	while n > 0 do
		begin
			x := x + n mod 10;
			n := n div 10;
			d := d + 1;
		end;


	writeln('Tong cac chu so la ', x);
	writeln('So do co ',d, ' chu so');

	readln;
END.