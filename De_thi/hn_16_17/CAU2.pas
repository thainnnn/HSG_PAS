uses crt;

var a : array[1..100] of integer;
	n, k, i, j, s, t : integer;
	fin, fout : text;

begin
	assign(fin, 'CAU2.INP');
	assign(fout, 'CAU2.OUT');
	reset(fin);
	rewrite(fout);

	readln(fin, n, k);
	for i := 1 to n do
		read(fin, a[i]);

	for i := 1 to n - 1 do
		for j := i to n do
			if a[i] > a[j] then
				begin
					t := a[j];
					a[j] := a[i];
					a[i] := t;
				end;
	
	s := 0;
	if n mod 2 = 0 then 
		begin
			for i := 1 to n do
				if ((i - 1) mod k) <> 0 then
					s := s + a[i];
		end
	else
		begin
			s := s + a[1];
			for i := 2 to n do
				if i mod 2 <> 0 then
					s := s + a[i];
		end;
		
	writeln(fout, s);

	close(fin);
	close(fout);
end.
 
