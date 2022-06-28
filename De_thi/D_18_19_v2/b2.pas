uses crt;

var p, m, q, i, n, k: longint;
	s : real;

function UCLN(a, b : longint) : longint;
begin
	if b = 0 then 
		exit(a)
	else UCLN := UCLN(b, a mod b);
end;

function nt(a : longint) : boolean;
var i : longint;
begin
	if a < 2 then
		exit(false)
	else 
		for i := 2 to trunc(sqrt(a)) do
			if a mod i = 0 then
				exit(false);
	exit(true);
end;

begin
	readln(p, q, n);
	writeln(UCLN(p, q));

	k := 0;
	for i := p to q do
		if nt(i) then
			inc(k);
	writeln(k);

	i := p;
	while (i mod p <> 0) or (i mod q <> 0) or (i mod n <> 0) do
		inc(i);
	writeln(i);

	s := p / q;

	for i := 1 to n do
		s *= 10;
	m := trunc(s);	
	
	writeln(m mod 10);
end.
 
