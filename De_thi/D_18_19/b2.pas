uses crt;

var a, b : integer;

procedure Nhap;
begin
    repeat
        readln(a, b);
    until (a > 1) and (b > a) and (b < 30000);
end;

procedure Yc1;
var i, s : integer;
begin
    s := 0;
    for i := a to b do
        if i mod 2 = 0 then
                s := s + i;
    writeln(s);
end;

procedure Yc2;
var r, aa, bb : integer;
begin
    aa := a;
    bb := b;
    while bb <> 0 do
        begin
            r := aa mod bb;
            aa := bb;
            bb := r;
        end;
    writeln(a div aa, #32, b div aa);

end;

procedure Yc3;
var m, i, d : integer;
begin
    d := 0;
    for i := a to b do
        begin
            m := sqr(trunc(sqrt(i)));
            if m = i then
                begin
                    write(i, #32);
                    inc(d);
                end;
        end;
    writeln(d);
end;

begin
    Nhap;
    Yc1;
    Yc2;
    Yc3;
end.
