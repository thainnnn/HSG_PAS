uses crt;

var f : text;
    i, j, n, t : integer;
    a : array[1..100] of longint;

begin
    assign(f, 'data.txt');
    reset(f);
    readln(f, n);
    for i := 1 to n do
        read(f, a[i]);
    for i := 1 to n do
        for j := i + 1 to n do
            if a[i] > a[j] then
                begin
                    t := a[j];
                    a[j] := a[i];
                    a[i] := t;
                end;
    for i := 1 to n do
        write(a[i]:4);
    writeln;
end.
