uses crt;

var s, m, d : string;
	// i : byte;

begin
	write('Nhap xau s: '); readln(s);

	m := copy(s, 1, pos(#32, s));
	delete(s, 1, pos(#32, s));

	s := s + ' ';
	while pos(#32, s) <> 0 do
		begin
			d := copy(s, 1, pos(#32, s));
			if length(m) < length(d) then
			 	m := d;
			delete(s, 1, pos(#32, s))
		end; 
	
	writeln(m);
	readln;
end.