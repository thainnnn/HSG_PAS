uses crt;

var dd : array[1..3] of integer;
    i : integer;

const N = 3;

begin
    writeln('Nhap do dai 3 canh tam giac: ');
    for i := 1 to N do
        readln(dd[i]);

    writeln('Chu vi: ', dd[1] + dd[2] + dd[3]);
    if (dd[1] = dd[2]) or (dd[1] = dd[3]) or(dd[2] = dd[3]) 
        then writeln('Tam giac can');
    if  (SQR(dd[1]) + SQR(dd[2]) = SQR(dd[3])) or (SQR(dd[1]) + SQR(dd[3]) = SQR(dd[2])) or (SQR(dd[2]) + SQR(dd[3]) = SQR(dd[1])) then
        writeln('Tam giac vuong');
end.
