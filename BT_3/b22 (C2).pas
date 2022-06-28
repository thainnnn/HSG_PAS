uses crt;

var n, i, j : longint;
	d : Word;

BEGIN
	repeat
		write('Nhap so n: '); readln(n);
	until n > 0;
	for i := 2 to n do
		begin
			d := 0;
			for j := 1 to i div 2 do
				if i mod j = 0 then
					d := d + 1;
					// writeln('d = ',d);
					// writeln('i = ', i);
					// readln;
			if d = 1 then write(i, ' ');
		end;
END.
