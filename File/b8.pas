uses crt;

var f : text;
    a : array[1..100, 1..100] of integer;
    i, j, m, n : integer;
begin
    assign(f, 'matran.txt');
    reset(f);

    readln(f, m, n);
    for i := 1 to m do
        for j := 1 to n do
            read(f, a[i, j]);
        
    for i := 1 to m do
        begin
            for j := 1 to n do
                write(a[i, j] : 3);
            writeln;
        end;
            
end.

