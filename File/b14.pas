Var f_in, f_out : string;
    fin, fou: text;
    n, i: integer;
    a: array[1..100] of string[23];

Begin
    write('File in: '); readln(f_in);
    assign(fin, f_in); reset(fin);
    i:=1; 

    While not(seekeof(fin)) do
        Begin
            Readln(fin,a[i]);
            inc(i);
        End;
    close(fin);

    write('File out: '); readln(f_out);
    assign(fou, f_out); rewrite(fou);

    n := i;
    for i := 1 to n do
        if copy(a[i], 21, 2) = 'Nu' then
            begin
                writeln(fou, a[i]);
                writeln(a[i]);
            end;
    for i := 1 to n do
        if copy(a[i], 21, 3) = 'Nam' then
            begin
                writeln(fou, a[i]);
                writeln(a[i]);
            end;

    close(fou);

    Readln;
End.
