uses crt;

var a, i, dem, y, demn : longint;
   
begin
    {KT số chẵn/ lẻ}
    write('Nhap so duong gom 4 chu so: '); readln(a);
    if a mod 2 = 0 then
        writeln(a, ' la so chan') else
            writeln(a, ' la so le');

    {KT số nguyên tố}
    dem := 0;
    for i := 1 to a do
        if a mod i = 0 then dem := dem + 1;
    if dem = 2 then 
        writeln(a, ' la so nguyen to') else
            writeln(a, ' khong la so nguyen to');

    {KT số hoàn hảo}
    demn := 0; 
    for y := 1 to a do
        if a mod y = 0 then
            demn := demn + y;
    if demn = a * 2 then
        writeln(a, ' la so hoan hao.') else
            writeln(a, ' khong la so hoan hao.');

end.