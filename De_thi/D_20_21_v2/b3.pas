uses crt;

var n, t_100, t_20, t_10 : longint;

begin
	readln(n);

	for t_10 := 0 to n div 10000 do
		for t_20 := 0 to (n - t_10 * 10000) div 20 do
			for t_100 := 0 to (n - t_10 * 10000 - t_20 * 20000) div 100000 do
				if(t_10 * 10000 + t_20 * 20000 + t_100 * 100000) = n then
					writeln(t_10, ' to 10k ', t_20, ' to 20k ', t_100, ' to 100k');

end. 
