uses crt;

var a, b, c, d, max, min : longint;

BEGIN
	write('Nhap a, b, c, d: '); readln(a, b, c, d);

	max := a;
	if max < b then max := b; 
	if max < c then max := c;
	if max < d then max := d;

	min := a;
	if min > b then min := b;
	if min > c then min := c;
	if min > d then min := d;

	

	writeln('Min = ', min);
	writeln('Max = ', max);

	readln;
END.