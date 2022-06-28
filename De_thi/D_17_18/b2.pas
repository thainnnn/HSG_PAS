uses crt;

var a, b : integer;

procedure Nhap;
begin
    repeat
        readln(a, b);
    until (a > 0) and (b > 0) and (a < b);
end;

procedure Yc1;
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
    writeln(aa);
end;

function t(n : integer) : integer;
var s : integer;
begin
    s := 0;
    while n <> 0 do
        begin
            s := s + n mod 10;
            n := n div 10;
        end;
    t := s;
end;

procedure Yc2;
var i, m : integer;
begin
    m := t(a);
    for i := a + 1 to b do
        if t(i) > t(m) then
            m := i;
    writeln(m);
end;

function nt(n : integer) : boolean;
var i : integer;
    f : boolean;
begin
    f := true;
    if n < 2 then
        f := true
    else
        for i := 2 to trunc(sqrt(n)) do
            if n mod i = 0 then
                begin
                    f := false;
                    break;
                end;
    nt := f;
end;

procedure Yc3;
var s, i : integer;
begin
    s := 0;
    for i := a to b do
        if nt(i) then
            s := s + i;
    writeln(s);
end;

begin
    Nhap;
    Yc1;
    Yc2;
    Yc3;
end.
