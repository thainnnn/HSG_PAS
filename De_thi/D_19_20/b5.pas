uses crt;

var  n : longint;
	f : boolean;

function ngto(n : longint) : longint;
var i, d : longint;
begin
        d := 0;
        for i := 1 to n do
                if n mod i = 0 then
                        d := d + 1;
        ngto := d;
end;


begin
	f := true;
	repeat
		readln(n);
	until n > 0;
    writeln(n);
	{ if ngto(n) <> 2 then }
	{     f := false; }

	while n > 10 do
		begin
			if (ngto(n div 10) <> 2) and (n > 0) then
				begin
					f := false;
					break;
				end;

			n := n div 10;
		end;
	if f = true then
		writeln(1)
	else
		writeln(0);
end.
