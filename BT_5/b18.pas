uses crt;

type Mang = array[1..100, 1..100] of longint;
  
var A : Mang;
    S : array[1..100] of longint;
    k, i, j, m, n : integer;

procedure Nhap;
begin
    for i := 1 to m do
        for j := 1 to n do
            begin
                write('A[', i, ',', j, '] = ');
                readln(A[i, j]);
            end;
end;

procedure Xuat;
begin
    for i := 1 to m do begin
            for j := 1 to n do
                write(A[i, j]:5);
            writeln;
        end;
end;

procedure Xulia;
var t : integer;
begin
    for i := 1 to m do
        for j := 1 to n - 1 do
            for k := j + 1 to n do
                if A[i,j] < A[i,k] then
                    begin
                        t := A[i,k];
                        A[i,k] := A[i,j];
                        A[i,j] := t;
                    end;
                
end;

procedure S;
begin
    S[1] := 0;
    for j := 1 to n do
        S[1] := S[1] + A[1,j];
    for i := 2 to m do
        begin
            S[i] := 0;
            for j := 1 to n do
                S[i] := S[i] + A[i, j];
        end;
end;

procedure Xulib;
begin
    for i := 1 to m - 1 do
        for j := i + 1 to m do
            if S[i] > S[j] then
                begin
                     
                end;
end;

begin
    write('Nhap so hang m: '); readln(m);
    write('Nhap so cot n: '); readln(n);
    Nhap;
    Xulia;
    Xuat;

    S; 
    writeln('---');
    for i := 1 to m do 
        write(S[i]:5);
end.


