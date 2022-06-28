// uses crt;

// var n, i, j : longint;
// 	a : array[2..1000000] of longint;

// BEGIN
// 	repeat
// 		write('N = '); readln(n);
// 	until n > 1;

// 	for i := 2 to n do
// 		a[i] := 1;

// 	for i := 2 to round(SQRT(n)) do
// 		if a[i] = 1 then
// 			begin
// 				j := sqr(i);
// 				while j < n do
// 					begin
// 						a[j] := 0;
// 						j := j + i;
// 					end;
// 			end;


// 	for i := 2 to n do
// 		if a[i] = 1 then
// 			write(i, ' ');
// 	readln;
// END.



uses crt;

var n : longint;

procedure ngto(n : longint);
var A : array[2..n];
begin
	for i := 2 to n do
		A[i] := 1;

	for i := 2 to round(SQRT(n)) do
		if A[i] = 1 then
			begin
				j := sqr(i);
				while j < n do
					A[j] := 0;
					j := j + i;
			end; 

	for i := 2 to n do
		if A[i] = 1 then
			write(i, ' ');
end;


BEGIN
	repeat
		write('N = '); readln(n);
	until n > 1;

	ngto(n)
END.
