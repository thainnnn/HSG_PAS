uses crt;

var f : text;
    n, i : integer;
    a : array[1..100] of integer;
begin
    assign(f, 'data_1.txt');
    reset(f);
    i := 1;
    while not seekEof(f) do
        begin
            if seekEof(f) then
                break;
            read(f, a[i]);
            inc(i);
        end;
    dec(i);
    n := i;
    writeln(n);
    for i := 1 to n do
        write(a[i]:3);
end.
