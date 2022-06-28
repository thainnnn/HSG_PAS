uses crt;

var i : integer;

BEGIN
	for i := 1 to 100 do
		begin
			write(i, ' ');
			if i mod 10 = 0 then writeln;
		end;

	readln;
END.