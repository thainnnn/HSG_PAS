uses crt;

var i, n : longint;

BEGIN
	write('Nhap n: '); readln(n);

	i := 2;
	write(n:10, '    |    ');
	while n > 1 do
		begin
			if n mod i = 0 then
				begin
					writeln(i:5);
					n := n div i;
					write(n:10, '    |    ');
					i := 2;
				end else
					i := i + 1;

		end;
END.