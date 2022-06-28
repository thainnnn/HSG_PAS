uses crt;

var n, i, tong : longint;

begin
    write('Nhap so n: '); readln(n);

    tong := 0;

    for i := 1 to n do
        if (i mod 3 = 0) or (i mod 5 = 0) then
            tong := tong + i;
    writeln(tong);
    readln;
end.