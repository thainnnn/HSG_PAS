uses crt;

var h, m, s, ss : longint;

BEGIN
	write('Nhap gio, phut, giay: '); readln(h, m, s);
	write('Nhap giay cong them: '); readln(ss);

	s := s + ss;

	if s >= 60 then 
		begin
			m := m + s div 60;
			s := s mod 60;
		end;
	if m >= 60 then
		begin
			h := h + m div 60;
			m := m mod 60;
		end;
	write(h, ' gio ', m, ' phut ', s, ' giay');

	readln;
END.