uses crt;
 
var n, i : integer;
    a : array[1..100] of integer;
begin
    readln(n);
    for i := 1 to n do
        read(a[i]);
    for i := 1 to n do
        if a[i] mod 2 = 0 then
            write(a[i], #32);
    writeln;
    for i := 1 to n do
        if a[i] mod 2 = 1 then
            write(a[i], #32);
end.
