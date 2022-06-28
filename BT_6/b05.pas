uses crt;

var s : string;
	// i : integer;

procedure xoa;
begin
	while s[1] = #32 do
		delete(s, 1, 1);
	while s[length(s)] = #32 do
		delete(s, length(s), 1);
	while pos(#32#32, s) <> 0 do
		delete(s, pos(#32#32, s), 1); 
end;

begin
	write('Nhap xau: '); readln(s);
	xoa;

	s := s + #32;
	while pos(#32, s) <> 0 do
		begin
			writeln(copy(s, 1, pos(#32, s)));
			delete(s, 1, pos(#32, s));
		end; 
	


	readln;
end.