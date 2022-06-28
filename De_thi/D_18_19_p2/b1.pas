uses crt;

var n, i : integer;

function nt(n : integer) : boolean;
var i : integer;
begin
    nt := false;
    if n < 2 then exit;
    for i := 2 to n div 2 do
        if n mod i = 0 then exit;
    nt := true;
end;

function songto(n : integer) : boolean;
var d, m : integer;
begin
    d := 0;
    m := n;
    while m > 0 do
        begin
            d := d + m mod 10;
            m := m div 10;
        end;
    if (nt(d)) and (nt(n)) then
        songto := true
    else 
        songto := false;
end;

procedure Yc1;
begin
    if songto(n) then
        writeln('So n la so song to')
    else
        writeln('So n khong la so song to');
end;

procedure Yc2;
begin
    for i := 2 to n do
        if songto(i) then
            write(i, ' ');
end;

procedure Yc3;
var k : integer;
begin
    writeln;
    if n < 5 then write('(3)')
    else

        begin
            write('(3,5)');
            k := 5;

            for i := 7 to n do
                if nt(i) then
                    begin
                        write('; (', k, ',' , i, ')');
                        k := i;
                    end;
        end;
end;

begin
    readln(n);
    Yc1;
    Yc2;
    Yc3;
end.
