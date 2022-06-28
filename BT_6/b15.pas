uses crt;

var s, k : string;	
	i, d : integer;	

begin
	write('Nhap xau s: '); readln(s);
	write('Nhap xau k: '); readln(k);

	d := 0;
	for i := 1 to length(s) - length(k) + 1 do 
		if copy(s, i, length(k)) = k then
			inc(d);
	writeln(d);
	readln;
end.