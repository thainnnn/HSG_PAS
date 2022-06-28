uses crt;

var a, b, n, i : longint;

begin
    write('Nhap so a: '); readln(a);
    write('Nhap so mu n: '); readln(n);

    b := 1;

    for i := 1 to n do
        b := b * a;

    writeln('Luy thua bac ', n, ' cua ', a, ' la: ', b); 
end.