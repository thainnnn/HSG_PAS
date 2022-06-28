uses crt;

var a, dem, y : integer;

begin
    writeln('Nhap mot so: '); readln(a);

    dem := 0; 
    for y := 1 to a do
        if a mod y = 0 then
            dem := dem + y;
    if dem  = a * 2 then
        writeln(a, ' la so hoan hao.') else
            writeln(a, ' khong la so hoan hao.');
end.