uses crt;

var f : text;
    m, n : integer;
begin
    assign(f, 'son.txt');
    reset(f);

    readln(f, m, n);
    writeln(m);
    writeln(n);

    readln;
end.
