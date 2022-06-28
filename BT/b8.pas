uses crt;

var a, b, i : longint;

begin
    write('Nhap a: '); readln(a);
    write('Nhap b: '); readln(b);

    i := 0;

    if a > b then
        begin
            i := a;
            a := b;
            b := i;
        end;

    writeln('So thu nhat la: ',a);
    writeln('So thu hai la: ',b);

        
end.