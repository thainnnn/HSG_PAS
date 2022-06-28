uses crt;

var A : array[1..1000, 1..1000] of Longint;
	i, k, j, n : longint;

procedure Nhap;
begin
    clrscr;
	write('Nhap n: '); readln(n);
end; 

procedure Xuli;
begin
    j := n mod 2 + 2;
    i := n mod 2 + 1;
	for k := 1 to n * n do
		begin
			A[i,j] := k;
            if k mod n = 0 then
                j := j + 2
                else
                    begin
                        j := j + 1;
                        i := i - 1;
                    end;
            if j > n then 
                j := j mod n;
            if i = 0 then i := n;
                
		end;
end;

procedure Xuat;
begin
    for i := 1 to n do
        begin
            for j := 1 to n do
                write(A[i,j]:5);
            writeln;
        end;
    readln;
end;

begin
    Nhap;
    Xuli;
    Xuat;
end.
