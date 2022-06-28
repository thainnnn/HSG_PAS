uses crt;

var n : longint;


function gt(n : longint) : longint;
begin
	if n = 0 then gt := 1 else
		gt := n * gt(n - 1);

end;
begin
	writeln('Nhap n: '); readln(n);
	writeln(gt(n));

	readln;
end.