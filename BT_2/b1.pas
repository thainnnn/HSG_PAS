uses crt;

var a, b, c : real;

begin
    writeln('Nhap do dai 2 canh: '); readln(a, b);
    writeln('Nhap so do goc xen giua: '); readln(c);

    write('Dien tich tam giac bang: ',a * b * sin(c) / 2 :0:2,' cm2');
    readln;
end.
