uses crt;

var 
	s : string;
	i : byte;

begin
	write('Nhap xau s: '); readln(s);

	i := 1;
	// s := s + #32;
	while i <= length(s) do
		begin
			if s[i] in ['0'..'9'] then
				delete(s, i, 1) else
					i := i + 1;
		end; 		
	writeln(s);
	readln;
end.