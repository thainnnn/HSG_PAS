uses crt; {khai bao' thu vien crt}
var n,i,dem:integer;
BEGIN
    clrscr;{ cau lenh xoa man hinh};
    write('Nhap n: ');readln(n);
    dem:=0;
    for i:=1 to n do
     begin
      if i mod 2=0 then
       begin
        write(i:4);
        dem:=dem+1;
       end;
      if dem=15 then
       begin
        dem:=0;
        writeln;{in duoc 15 so thi xuong dong};
       end;
  end;
    readln
END.