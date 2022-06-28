uses crt;

var fin, fout : text;
    n, i, m : integer;
    a : array[1..100] of integer;

begin
    assign(fin, 'b5_1_i.txt');
    assign(fout, 'b5_1_o.txt');

    reset(fin);
    rewrite(fout);

    readln(fin, n);
    
    i := 1;
    while not eof(fin) do
        begin
            read(fin, a[i]);
            inc(i);
        end;

    m := a[1];
    for i := 2 to n do
        if m < a[i] then
            m := a[i];
    

    writeln(fout, m);

    close(fin);
    close(fout);
end.
