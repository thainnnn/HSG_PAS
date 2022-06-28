uses crt, math;

var x, n, cb : real;

begin
    write('Nhap so x: '); readln(x);
    write('Nhap can bac n cua ', x:0:0, ': '); 
    readln(n);

    cb := exp(1/n*ln(x));


    writeln('Can bac ', n:0:0, ' cua ', x:0:0, ' la: ', cb:0:2 );
end.
