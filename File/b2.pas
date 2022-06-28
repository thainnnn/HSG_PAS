uses crt;

var f : text;
    m, n : integer;

begin
    assign(f, 'sod.txt');
    reset(f);
    readln(f, m);
    readln(f, n);

    writeln(m);
    writeln(n);
end.
