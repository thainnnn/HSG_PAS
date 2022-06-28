uses crt;

var 
	fi, fo : text;
	n, i, j, max, s, v1, v2 : integer;
	a : array[1..100] of integer;

begin
	assign(fi, 'DOANCON.INP'); reset(fi);
	assign(fo, 'DOANCON.OUT'); rewrite(fo);

	readln(fi, n);
	for i := 1 to n do
		read(fi, a[i]);

	max := a[1];
	v1 := 1;
	v2 := 1;

	for i := 1 to n do
		begin
			s := 0;
			for j := i to n do
				begin
					s := s + a[j];
					if s > max then 
						begin
							max := s;
							v1 := i;
							v2 := j;
						end;
				end;
		end;
	
	writeln(fo, max);
	writeln(fo, v1, #32, v2);

	close(fi);
	close(fo);
end.
 
