uses crt;

type mang = array[1..1000] of integer;

var a : mang;
    n, k : integer;
procedure Nhap;
var i : integer;
begin
    readln(n);
    for i := 1 to n do
        read(a[i]);
    readln(k);
end;

procedure Yc1;
var i : integer;
    f : boolean;
begin
    f := true;
    for i := 1 to n do
        if a[i] <= A[i + 1] then
            begin
                f := false;
                break;
                end;
    writeln(f);
end;


procedure Yc2;
var i, j, k, m : integer;
begin
    m := 2;
    for i := 1 to n do
        begin
            if A[i] mod 2 = 1 then
                begin
                    k := A[i];
                    for j := i downto m do
                        A[j] := A[j - 1];
                    A[m - 1] := k;
                    inc(m);
                end;
        end;

    for i := 1 to n do
        write(A[i]:5);
end;

procedure Yc3;
var i : integer;
begin
    writeln;
    for i := 1 to n do
        if A[i] <> k then
            write(A[i]:5);
end;

begin
    Nhap;
    Yc1;
    Yc2;
    Yc3;
end.
