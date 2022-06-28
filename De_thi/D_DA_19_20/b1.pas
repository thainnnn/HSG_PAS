uses crt;

type mang = array[1..100] of integer;

var a : mang;
    n, t, i, j : integer;

procedure Nhap;
begin
    readln(n);
    for i := 1 to n do
        read(a[i]);
end;

procedure Yc1;
begin
    for i := 1 to n - 1 do
        for j := i + 1 to n do
            if a[i] < a[j] then
                begin
                    t := a[j];
                    a[j] := a[i];
                    a[i] := t;
                end;
    for i := 1 to n do
        write(a[i], #32)
end;

procedure Yc2;
var max : integer;
begin
    writeln;
    max := abs(a[1]);
    for i := 2 to n do
        if max < abs(a[i]) then
            max := abs(a[i]);
    writeln(max)
end;

procedure Yc3;
var m : integer;
begin
    for i := 1 to n do
        begin
            if a[i] > 0 then
                m := sqr(trunc(sqrt(a[i])));
            
            if (m = a[i]) and (m > 1) then
                write(m, #32);
        end;
    writeln;
end;

procedure Yc4;
var d : integer;
begin
    d := 0;
    for i := 1 to n do
        begin
            for j := 1 to n do
                if a[j] = a[i] then
                    inc(d);
            if d >= n / 2 then
                begin
                    writeln(a[i]);
                    break;
                end 
            else
                d := 0;
        end;
end;

begin
    Nhap;
    Yc1;
    Yc2;
    Yc3;
    Yc4;
end.
{1 2 3 4 5}
