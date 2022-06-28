uses crt;

var s : string;	
	i : byte;
begin
	write('Nhap xau s: '); readln(s);
	while pos(#32, s) = 1 do 
		delete(s, 1, pos(#32, s));
	while pos(#32, s) = length(s) do 
		delete(s, length(s), 1);	
	while pos(#32#32, s) <> 0 do 
		delete(s, pos(#32#32, s), 1);

	s[1] := upcase(s[1]);
	for i := 1 to length(s) do
		if (s[i] = '.') or (s[i] = ',') or (s[i] = ';') or (s[i] = '?') or (s[i] = '...') or (s[i] = ')') or (s[i] = ':')or (s[i] = '-') or (s[i] = '(') or (s[i] = #34) or (s[i] = #38) or (s[i] = '!') then 
			begin
				delete(s, i - 1, 1);
				s[i + 1] := upcase(s[i + 1]);
			end;
	writeln(s);
end.