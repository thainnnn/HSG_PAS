uses crt;
var
	n, i, dem : integer;
begin	
	dem := 0;

	writeln('Nhap n: '); readln(n);
	
	for i:=1 to n do
		begin
			if i mod 2 = 1 then
				begin
					write(i:4);
					dem := dem + 1;
				end;
			if dem = 30 then
				begin
					dem := 0;
					writeln();
				end;		
		end;

	readln();
end.