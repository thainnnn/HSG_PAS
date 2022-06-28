uses crt;

var A : array[0..1000] of longint;
    i, j, n : longint;

procedure Nhap;
begin
    clrscr;
    writeln('Nhap n: '); readln(n);
end;

procedure Xuat;
begin
    for i := 1 to n do
        A[i] := 0;
    A[0] := 1;
    writeln(A[0]:5);
    for i := 1 to n do
        begin
            for j := i downto 1 do
                begin
                    A[j] := A[j - 1] + A[j];
                    write(A[j]:5);
                end;
            writeln(A[i]:5);
        end;
    writeln;
    readln;
        
end;

begin
    Nhap;
    Xuat;
end.
