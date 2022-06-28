uses crt;

var n, i, d, j: integer;

function ngto(n : integer) : boolean;
var i : integer;
begin
    ngto := false;
    if n < 2 then exit;
    for i := 2 to n div 2 do
        if n mod i = 0 then
            exit;
    ngto := true
end;

function kngto(m , n: integer) : boolean;
var i : integer;
begin
    kngto := true;
    for i := m + 1 to n do
        if ngto(i) then
            exit;
    kngto := false;
end;

procedure Nhap;
begin
    readln(n);
end;

procedure Yc1;
begin
    i := 2;
    for i := 1 to n do
        if ngto(i) then
            write(i, #32);
    writeln;
end;

procedure Yc2;
var f : boolean;
begin
    f := true;
    i := n;
    while f do
        begin
            if ngto(i) then
                begin
                    writeln(i, #32);
                    break;
                end;
            inc(i);
        end;
end;

procedure Yc3;
begin
    i := 3;
    d := 0;
    while i <= n do
        begin
            if ngto(i) and ngto(i+2) then
                begin
                    writeln(i,#32,i+2);
                    j := i;
                end;
            if not kngto(i, n) then
                break;
            if d = 2 then
                begin
                    writeln;
                    i := j;
                    d := 0;
                end
            else
                inc(i);
        end;
end;

begin
    clrscr;
    Nhap;
    Yc1;
    Yc2;
    Yc3;
    Readln;
    Readln;
end.

