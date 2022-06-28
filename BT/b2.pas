uses crt;

var a, b,i, GTTD : longint;

begin
    writeln('Nhap 2 so nguyen duong:');
    readln(a,b);

    writeln('Tong = ', a + b);
    writeln('Hieu = ', a - b);
    writeln('Tich = ', a * b);
    writeln('Thuong = ', round(a/b));

    GTTD := abs(a + b);
    for i := 1 to GTTD do
        if GTTD mod i = 0 then write(i, #32);
    writeln;
    while a <> b do
        if a > b then a := a - b else
            b := b - a;
    writeln('UCLN = ',a);

    

end.