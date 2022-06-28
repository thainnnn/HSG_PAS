uses crt;

var a : integer;

BEGIN
	a := 10;
	
	repeat
		begin
			a := a - 1;
			writeln(a);
		end;
	until a = 1;
END.