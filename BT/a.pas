uses crt;

var dd : array[1..3] of integer;
    i, a, b, c : integer;
    p, S, h : real;
const N = 3;

begin
    {Nhap du lieu}
    writeln('Nhap do dai 3 canh tam giac: ');
    for i := 1 to N do
        readln(dd[i]);
    
    {Gan gia tri}
    a := dd[1];
    b := dd[2];
    c := dd[3];

    // writeln('Chu vi: ', dd[1] + dd[2] + dd[3]);
    // if (dd[1] = dd[2]) or (dd[1] = dd[3]) or(dd[2] = dd[3]) 
    //     then writeln('Tam giac can');

    
    {Tinh chu vi}
    writeln('Chu vi: ', a + b + c);

    {KT tam gic can}
    if (a = b) or (a = c) or (b = c) then
        writeln('Tam giac can') else
            writeln('Khong phai tam giac can');

    {KT tam giac vuong}
    if  (SQR(dd[1]) + SQR(dd[2]) = SQR(dd[3])) or (SQR(dd[1]) + SQR(dd[3]) = SQR(dd[2])) or (SQR(dd[2]) + SQR(dd[3]) = SQR(dd[1])) then
        writeln('Tam giac vuong');

    {TInh dien tich}
    p := (a + b + c)/2;

    S := SQRT(p * (p - a) * (p - b) * (p - c));
    writeln(round(S));

    h := S * 2 / a;
    writeln(h);
    

    
end.