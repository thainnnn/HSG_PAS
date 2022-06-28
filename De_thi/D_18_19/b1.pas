uses crt;

var n : integer;

procedure Nhap;
begin
    repeat
        write('N = ');
        readln(n);
    until (n > 2) and (n < 100);
end;

procedure Yc1;
begin
    if n mod 2 = 0 then
        writeln('So chan')
    else
        writeln('So le');
end;

procedure Yc2;
var s, i : integer;
begin
    s := 0;
    for i := 1 to n do
        if i mod 2 = 1 then
            s := s + i;
    writeln(s);

end;

procedure Yc3;
var s, i : integer;
begin
    s := 0;
    for i := 1 to n do
        if i mod 2 = 0 then
            s := s + 1;
    writeln(s);

end;

function ngto(n : integer) : boolean;
var i : integer;
    f : boolean;
begin
    f := true;
    for i := 2 to n - 1 do
        if n mod i = 0 then
            begin
                f := false;
                break;
            end;
    ngto := f;
end;

procedure Yc4;
var i : integer;
begin
    if ngto(n) = true then
        writeln('Co la so nguyen to') 
    else
        begin
            writeln('Khong la so nguyen to');
            i := 2;
            while i <= n do
                begin
                    if n mod i = 0 then
                        begin
                            write(i);
                            n := n div i;
                            break;
                        end;
                    inc(i);
                end;
            i := 2;
            while n <> 1 do
                begin
                    while n mod i = 0 do
                        begin
                            write('*', i);
                            n := n div i;
                        end;
                    inc(i);
                end;
        end;
end;


begin
    Nhap;
    Yc1;
    Yc2;
    Yc3; 
    Yc4;
end.
