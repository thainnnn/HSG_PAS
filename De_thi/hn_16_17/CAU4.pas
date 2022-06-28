uses crt;

var a : array[1..100, 1..100] of integer;
	m, n, d, h, r, i, j, b, c, s1, s2, min : integer;
	fin, fout : text;


begin
	assign(fin, 'CAU4.INP');
	assign(fout, 'CAU4.OUT');
	reset(fin);
	rewrite(fout);

	readln(fin, m, n);
	readln(fin, d, r, h);

	for i := 1 to m do 
		for j := 1 to n do
			read(fin, a[i, j]);

	if not (((d <= m) and (r <= n)) or ((r <= m) and (d <= n))) then
		writeln(fout, -1)
	else
		begin
			min := 0;
			s1 := 0;
			s2 := 0;
			for i := 1 to d do
				for j := 1 to r do
					begin
						s1 := s1 + abs(h - a[i, j]);
						s2 := s2 + abs(h - a[j, i]);
					end;

			if (d <= n) and (r <= m) then
				min := s2
			else 
				min := s1;

			for i := 1 to m - d + 1 do
				for j := 1 to n - r + 1 do
					begin
						s1 := 0;
						s2 := 0;
						for b := i to i + d - 1 do
							for c := j to j + r - 1 do
								begin
									s1 := s1 + abs(h - a[b, c]);
									s2 := s2 + abs(h - a[c, b]);
								end;
						if (min > s1) and (d <= n) and (r <= m) then
							min := s1;
						if (min > s2) and (d <= m) and (r <= n)then
							min := s2;
					end;
	
				writeln(fout, min);
			end;
	close(fin);
	close(fout);
end.
 
