uses crt;

var n, i, k : integer;
	s, ch, t : string;

begin
	s := '';
	readln(n);

	for i := 1 to n do
		begin
			str(i, ch);
			s := s + ch;
		end;

	k := 0;
	while length(s) >= 2 do
		begin
			t := '';
			if k = 0 then
				begin
					for i := 1 to length(s) do
						if i mod 2 <> k then
							t := t + s[i];
					s := t;
					k := k + 1;
				end
			else if k = 1 then
				begin
					for i := 1 to length(s) do
						if i mod 2 <> k then
							t := t + s[i];
					s := t;
					k := k - 1;
				end;
		end;
	writeln(s);
end.
 
