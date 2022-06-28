uses crt;

var  a, b, c, s, p : real;

begin
	readln(a, b, c);
	if (a + b > c) and (b + c > a) and (a + c > b) then 
		begin
			writeln('Co');
			p := (a + b + c) / 2;
			s := sqrt(p * (p - a) * (p - b) * (p - c));
			writeln('S = ', s:0:2);
		end
    else
        writeln('Khong');
end.
