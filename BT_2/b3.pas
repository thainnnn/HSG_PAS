uses crt;

var a, b, i : integer;

begin
    {Cau a}
    writeln('Nhap 2 so a, b: '); readln(a, b);
    i := a;
    a := b;
    b := i;

    writeln('a = ',a, ' b = ', b);

    {Cau b}
    writeln('Nhap 2 so a, b: '); readln(a, b);
    
    a := a + b;
    b := a - b;
    a := a - b;

    writeln('a = ',a );
    writeln('b = ',b );
end.
