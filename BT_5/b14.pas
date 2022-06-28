uses crt;

type Mang = array[1..100] of longint;

var A, B, C : Mang;
    t, j, i, n, m, k : integer;

procedure Nhap(var n : integer; var A : Mang);
begin
    for i := 1 to n do
        begin
            write('[', i, '] = ');
            readln(A[i]);
        end;

end;

procedure SX (var n : integer; var A : Mang);
begin
    for i := 1 to n - 1 do
        for j := i + 1 to n do
            if A[i] < A[j] then
                begin
                    t := A[j];
                    A[j] := A[i];
                    A[i] := t;
                end;
end;

procedure Xuat(n : integer;  A : Mang);
begin
    for i := 1 to n do
        write(A[i]:5);
    writeln;
end;

procedure MangC;
begin
    i := 1;
    j := 1;
    k := 1;
    while (i <= n) and (j <= m) do
        begin
            if A[i] >= B[j] then
                begin
                    C[k] := A[i];
                    i := i + 1;
                    k := k + 1
                end else
                    begin
                        C[k] := B[j];
                        j := j + 1;
                        k := k + 1;
                    end;
            if i > n then
                begin
                    for i := j to m do 
                        begin
                            C[k] := B[i];
                            k := k + 1;
                        end;
                    break;
                end;
            if j > m then
                begin
                    for j := i to n do 
                        begin
                            C[k] := A[j];
                            k := k + 1;
                        end;
                    break;
                end;
        end;
    k := k - 1;
end;

begin
    write('Nhap so phan tu mang A: '); readln(n);
    Nhap(n, A);
    write('Nhap so phan tu mang B: '); readln(m);
    Nhap(m, B);

    SX(n, A);
    Xuat(n, A);

    SX(m, B);
    Xuat(m, B);
    
    MangC;
    Xuat(k, C);
end.
