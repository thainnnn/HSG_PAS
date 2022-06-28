uses crt;

type Mang = array[1..1000] of longint;

var A, B : Mang;
    n, m : longint;
function Tim(x : longint; n : longint; A : Mang) : boolean;
var F : boolean;
    i : longint;
begin
    F := false;
    i := 1;
    while (i <= n) and (not F) do
        if x = A[i] then
            F := true else
                i := i + 1;
    Tim := F;
end;


procedure Nhap(var n : longint; var A : Mang);
var x : longint;
    c : char;
begin
    n := 0;
    repeat 
        write('Nhap x: '); readln(x);
        if not Tim(x, n, A) then
            begin
                n := n + 1;
                A[n] := x;
            end;
        writeln('Esc thoat');
        c := readkey;
    until c = #27;

end;


procedure Giao(n : longint; A : mang; m : longint; B : mang);
var i : longint;
begin
    for i := 1 to n do
        if Tim(A[i], m, B) then
            write(A[i]:4);
end;

begin
    writeln('Nhap mang A: ');
    Nhap(n, A);
    writeln('Nhap mang B: ');
    Nhap(m, B);
    write('Giao: ');

    Giao(n, A, m, B);
    writeln;
end.

