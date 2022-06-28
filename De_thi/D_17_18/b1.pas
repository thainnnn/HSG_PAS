uses crt;

var n : byte;
    s : real;

procedure Nhap;
begin
    readln(n);
end;

procedure Yc1;
var i : byte;
begin
    s := 1;
    for i := 1 to n do
        s := s * ((i + 1) / (2 * i));
    writeln(s:0:3);
end;

procedure Yc2;
var i, d : byte;
begin
    s := 0;
    d := 1;
    for i := 1 to n do
        begin
            d := d * i;
            s := s + 1 / d;
        end;
    writeln(s:0:2);
end;

begin
    Nhap;
    Yc1;
    Yc2;
end.
