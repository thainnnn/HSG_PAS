
uses crt;

var a, d, s, b, t, code : integer;
    a1, k, b1, m , r: string;

procedure Yc1_2_3;
begin
    a1 := '';
    b1 := '';
    while a > 0 do
        begin
            s := s + a mod 10;
            str(a mod 10, k);
            a1 := a1 + k;
            inc(d);
            a := a div 10;
        end;
    while b > 0 do
        begin
            str(b mod 10, k);
            b1 := b1 + k;
            b := b div 10
        end;


    writeln(d:3);
    writeln(s:3);
    writeln(a1:3);
end;

procedure Yc4;
begin
    m := '';
    val(a1, a, code);
    val(b1, b, code);
    t := a + b;
    while t > 0 do
        begin
            str(t mod 10, r);
            m := m + r;
            t := t div 10;
        end;
    writeln(m:3);
end;

procedure Nhap;
begin
    readln(a);
    readln(b);
end;



begin
    clrscr;
    Nhap;
    Yc1_2_3;
    Yc4;
    Readln;
end.
