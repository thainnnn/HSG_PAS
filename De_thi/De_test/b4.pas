uses crt;

var A : array[1..100] of integer;
	i, j, n, d, t : integer;

procedure Nhap;
begin
    repeat
		write('Nhap n: '); readln(n);
	until (2 < n) and (n < 100);

	for i := 1 to n do
		begin
			write('Nhap phan tu thu ', i, ': '); readln(A[i]);
		end;
end;

procedure Yc1;
begin
    for i := 1 to n - 1 do
		for j := i + 1 to n do
			if A[i] > A[j] then
				begin
					t := A[j];
					A[j] := A[i];
					A[i] := t;
				end;
    for i := 1 to n do
        write(A[i], #32);
    writeln;
end;

function nt(n : integer) : boolean;
var i : integer;
begin
    nt := false;
    if n < 2 then exit;
    for i := 2 to trunc(sqrt(n)) do
        if n mod i = 0 then
            exit;
    nt := true;
        
end;

procedure Yc2;
begin
    write('Cac so nguyen to: ');
    d := 0;
	for i := 1 to n do
		begin
            if nt(A[i]) then
                begin
                    write(A[i], #32);
                    inc(d);
                end;
		end;
	writeln;
    writeln('Co ', d, ' so nguyen to');

end;

BEGIN
	Nhap;
    Yc1;
    Yc2;	
END.
