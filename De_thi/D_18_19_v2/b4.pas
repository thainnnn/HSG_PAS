uses crt;

var 
	s : string;
	i, d, l, k : integer;
begin
	readln(s, k);
	d := 0;
	while d <> k do
		begin
			l := length(s);
			for i := 1 to l - 1 do
				if s[i] < s[i + 1] then
					begin
						delete(s, i, 1);
						break;
					end;
			if length(s) = l then
				delete(s, l, 1);
			inc(d);
		end;
	
	writeln(s);
end.
 
