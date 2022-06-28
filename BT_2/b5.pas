uses crt;

var a, b, c, p, S : real;

Begin
    writeln('Nhap do dai 3 canh: '); readln(a, b, c);
    p := (a + b + c) / 2;
    S := SQRT(p * (p - a) * (p - b) * (p - c));

    writeln('Dien tich tam giac: ', S:0:2);
    readln;
End.