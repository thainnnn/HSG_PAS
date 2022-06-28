uses crt;

var x, y, a, b, c, r, h, i, n : longint;

begin
    {Cau a}
    writeln('Cau a');
    writeln('Nhap 2 so x, y: '); readln(x,y);
    writeln('Ket qua cua (x + y) / (2 + x / y) = ',(x + y) / (2 + x / y):0:2);

    {Cau b}
    writeln('Cau b');
    writeln('Nhap cac so a, b, c, r, h: '); readln(a, b, c, r, h);
    writeln('KQ: ', (a + b) * (b - 2 * c + 3) / (r / 2 * h - 9 * (a - 1)):0:2);

    {Cau c}
    writeln('Cau c');
    y := 1;
    writeln('Nhap so x: '); readln(x);
    writeln('Nhap luy thua n cua ', x, ' : '); readln(n);
    for i := 1 to n do
        y := y * x;
    writeln('KQ: ', y);

    {Cau d}
    writeln('Cau d');
    writeln('Nhap 2 so a, x: '); readln(a,x);
    writeln('KQ: ', exp(abs(a + sqrt(sin(x)) - x)):0:2);

end.