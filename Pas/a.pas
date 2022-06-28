program hello;
uses crt;

var ds : array[1..100] of string;
	i, n, dem : integer;

Begin
write('Nhap so luong cac ban: ');
	readln(n);

	writeln('Nhap ten cac ban hoc sinh: ');
	for i := 1 to n do
		readln(ds[i]);

	writeln('Cac ban hoc sinh: ');

	dem := 0;

	for i := 1 to n do
	
		Begin
			writeln(ds[i]);
			dem := dem + 1;
		
		
			if dem = 2 then
				dem := 0;
				writeln();
		
		End; 
End.



