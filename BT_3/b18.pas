uses crt;

var i, j : integer;

BEGIN
	for i := 1 to 10 do
		begin
			for j := 2 to 9 do
				write(j:2, ' x ', i:2, ' = ',i * j:2, ' ');
			writeln;
		end;
		
	readln;
END.