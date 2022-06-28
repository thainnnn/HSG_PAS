uses crt;

var n : longint;

function nt(n : longint) : boolean;
var i, k : longint;
begin
	if n < 2 then exit(false);
	if n = 2 then exit(true);
	k := trunc(sqrt(n));

	i := 3;
	while i <= k do
		begin
			if n mod i = 0 then
				exit(false)
			else
				i += 2;
		end;
	nt := true;
end;

begin
	readln(n);

	while nt(n) do n := n div 10;
	if n = 0 then
		writeln(1)
	else
		writeln(0);

end.
 
