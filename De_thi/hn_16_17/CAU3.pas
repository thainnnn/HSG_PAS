uses crt;

var fin, fout : text; 
	a : array[1..100, 1..100] of char;
	s, st : string;
	n, i, j, k, max : integer;

function count(m : integer) : integer;
var i, ct : integer;
begin
	ct := 0;
	for i := 1 to k do
		if a[m, i] = st[i] then
			inc(ct);
	exit(ct);
end;

function check(c : char; v : integer) : boolean;
var i : integer;
begin
	for i := 1 to n do
		if a[i, v] = c then
			exit(true);
	exit(false);
end;

function tof() : boolean;
begin
	for i := 1 to k do
		if check(st[i], i) = false then
			exit(false);
	exit(true);
end;

begin
	assign(fin, 'CAU3.INP');
	assign(fout, 'CAU3.OUT');
	reset(fin);
	rewrite(fout);
	readln(fin, n);
	for i := 1 to n do
		begin
			readln(fin, s);
			for j := 1 to length(s) do
				a[i, j] := s[j];
		end;
	readln(fin, st);
	k := length(st);

	if not tof then
		writeln(fout, -1)
	else 
		begin
			max := 0;
			for i := 1 to n do
				if max < count(i) then
					max := count(i);
			writeln(fout, k - max);
		end;
	close(fin);
	close(fout);
end.
 
