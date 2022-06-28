uses crt;

var x, y, a, b, c : integer;

begin
    writeln('Nhap toa do x, y: '); readln(x,y);
    writeln('Nhap A, B, C: '); readln(a, b, c);
    writeln('Khoang cach tu I(x,y) den D la: ', (a * x + b * y + c) / (sqrt(sqr(a)) + sqr(b)):0:2 );
end.