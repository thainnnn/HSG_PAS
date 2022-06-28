uses crt;

var n, i, j : longint;
    a : array[2..1000000000] of boolean;

begin
    readln(n);
    for i := 2 to n do
        a[i] := true;
    i := 2;
    while i <= n do
        begin
            writeln(i);
            j := 2;
            while i * j <= n do
                begin
                    a[i * j] := false;
                    inc(j);
                end;
            inc(i);
        end;
    for i := 2 to n do
        if a[i] then
            writeln(i);

         
end.
