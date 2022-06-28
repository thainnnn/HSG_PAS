uses crt;

var N : longint;
	a, b, c, d : integer;

procedure Nhap;
begin
    repeat
		write('Nhap so tien N: '); readln(N);
	until (2 < n) and (n < 1000000);
end;

procedure Yc;
begin
    d := 0;

	for a := 0 to N div 10000 do
		for b := 0 to (N - (N div 10000) * a) div 20000 do
			for c := 0 to (N - ((N - (N div 10000) * a) div 20000) * b) div 100000 do
				if 10000 * a + 20000 * b + 100000 * c = N then
					begin
						d := d + 1;
						write('Cach ', d, ': ');
						writeln(a, ' to 10000 dong, ', b, ' to 20000 dong, ', c, ' to 100000 dong');
					end;		
    if d = 0 then
        writeln('Khong co cach nao');
	readln; 
end;

BEGIN
    Nhap;
    Yc;
END.
