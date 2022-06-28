uses crt;

var A : array[1..4] of longint;
	i, j, t, max, min : longint;
BEGIN
	for i := 1 to 4 do
		begin
			write('Nhap so thu ', i, ': ');
			readln(A[i]);
		end;
	for i := 1 to 4 do
		for j := i + 1 to 4 do
			if A[i] > A[j] then
				begin
					t := A[j];
					A[j] := A[i];
					A[i] := t;
				end;
	min := A[1];
	max := A[4];

	writeln('Min = ', min);
	writeln('Max = ', max);
END.