uses crt;
var  a,b,x : real;
BEGIN
	write('a = '); readln(a);
	write('b = '); readln(b);
	if a = 0 then   	{ nếu a bằng 0 }
		if b = 0 then  { trường hợp a = 0 và b = 0 }
			writeln('phuong trinh co vo so nghiem')
		else   { trường hợp a=0 và b  0 }
			writeln('phuong trinh vo nghiem')
	else  { trường hợp a  0 }
		begin
			x:= -b/a;
			writeln('phuong trinh co nghiem la :',x:0:2);
		end;
	readln;
END.
