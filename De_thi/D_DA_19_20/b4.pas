uses crt;

var n, i, j, k : integer;
    a : array[0..100, 0..100] of integer;

begin
    readln(n);
    a[0, 0] := 1;
    for i := 1 to n do
        for j := 1 to i do
            a[i, j] := 0;
    for i := 1 to n + 1 do
        begin
            for j := 1 to i do
                begin
                    a[i, j] := a[i - 1, j - 1] + a[i - 1, j];
                    write(a[i, j]:5);
                end;
            writeln;
        end;

    write('x^', n, ' + ');
    i := n - 1;
    j := 1;
    k := 1;

    while k < n + 1 do
        begin
            write(a[n + 1][k + 1],'x^', i, 'y^', j, ' + ');
            i := i - 1;
            j := j + 1;
            k := k + 1;

       end;

    write('y^', n);
    readln;
end.
