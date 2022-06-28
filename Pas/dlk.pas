uses crt;

var n : array[1..100] of integer;
	i, max : integer;
Begin
	writeln('Nhap 5 so: ');
	for i := 1 to 5 do
		readln(n[i]);

	writeln('Cac so ban nhap la: ');
	for i := 1 to 5 do
		writeln(n[i], ' ');

	max := n[1];
	for i := 2 to 5 do 
		if (n[i] > max) then max := n[i];

	writeln('Gia tri lon nhat la: ', max);
	

End.