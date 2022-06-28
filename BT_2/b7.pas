uses crt;

var n, a : real;

begin
    write('Nhap so n: '); readln(n);

    a := (2 * n) / 3;

    writeln('So thu nhat: ', a:0:2);
    writeln('So thu hai: ', n - a:0:2);

    readln;
end.