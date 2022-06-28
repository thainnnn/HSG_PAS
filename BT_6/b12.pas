uses crt;

var s, c : string;
	// i : byte;

begin
	write('Nhap xau s: '); readln(s);
	write('Nhap ki tu ch: '); readln(c);
	s := s + ' ';
	while pos(c, s) <> 0 do		
		delete(s, pos(c, s), 1);
	writeln(s);
	readln;
end.