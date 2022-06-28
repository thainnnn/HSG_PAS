uses crt;

var A : array[1..100] of longint;
    i, j, n, x, k : longint;

procedure Nhap;
begin
    write('Nhap n: '); readln(n);
    for i := 1 to n do
        begin
            write('A[', i, '] = ');
            readln(A[i]);
        end;
    write('Nhap x: '); readln(x);
end;

procedure SX;
var t : longint;
begin
    for i := 1 to n - 1 do
        for j := i + 1 to n do
            if A[i] > A[j] then
                begin
                    t := A[j];
                    A[j] := A[i];
                    A[i] := t;
                end;
    
end;

procedure Tim;
begin
    if x > A[n] then
        begin
            A[n + 1] := x;
            n := n + 1;
        end else
            begin
                for i := 1 to n do
                    if A[i] >= x then
                        begin
                            k := i;
                            break;
                        end;

                for i := n + 1 downto k + 1 do
                    A[i] := A[i - 1];        
                A[k] := x;
                n := n + 1;
            end;
end;


procedure Xuat;
begin
    for i := 1 to n do
        write(A[i]:5);
    writeln;
end;

begin
    Nhap;
    SX;
    Xuat;
    Tim;
    Xuat;
end.
