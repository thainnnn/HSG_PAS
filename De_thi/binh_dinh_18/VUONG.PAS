uses crt;

var fi, fo : text;
	m, n, i, j, max, v1, v2 : integer;
	a, f : array[1..100, 1..100] of integer;

function min(_a, _b, _c : integer) : integer;
var m : integer;
begin
	m := _a;
	if m > _b then
		m := _b;
	if m > _c then
		m := _c;
	exit(m);

end;

begin
	assign(fi, 'VUONG.INP'); reset(fi);
	assign(fo, 'VUONG.OUT'); rewrite(fo);

	readln(fi, m, n);
	for i := 1 to m do
		for j := 1 to n do
			begin
				read(fi, a[i, j]);
				f[i, j] := 1;
			end;

	max := 0;
	for i := 1 to m do
		for j := 1 to n do
			if(a[i, j] = a[i - 1, j - 1]) and (a[i, j] = a[i, j - 1]) and (a[i, j] = a[i - 1, j]) then
				begin
					f[i, j] := min(f[i - 1, j - 1], f[i, j - 1], f[i - 1, j]) + 1;
					if max < f[i, j] then
						begin
							max := f[i, j];
							v1 := i;
							v2 := j;
						end;
				end;
				
	
	writeln(fo, max);
	writeln(fo, v1 - max + 1, #32, v2 - max + 1);
	close(fi);
	close(fo);
end.
 
