uses crt;

var n, k, d, i : integer;
	fin, fout : text;

function try(a : integer) : boolean;
var  i, t : integer;
begin
	t := 0;
	for i := 1  to a do
		if a mod i = 0 then inc(t);
	if t >= k then
		exit(true);
	exit(false);
end;

begin
	assign(fin, 'CAU1.INP');
	assign(fout, 'CAU1.OUT');
	reset(fin);
	rewrite(fout);

	readln(fin, n, k);

	d := 0;
	for i := 1 to n do
		if try(i) then
			inc(d);
	writeln(fout, d);
	close(fin);
	close(fout);
end.
 
