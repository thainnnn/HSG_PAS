uses crt;

var i, dem, a :integer;

begin
    writeln('Nhap mot so nguyen duong: '); readln(a);

    dem := 0;

    for i := 1 to a do
        if a mod i = 0 then dem := dem + 1;

    if dem = 2 then 
        writeln(a, ' la so nguyen to') else
            writeln(a, ' khong la so nguyen to');
end.

