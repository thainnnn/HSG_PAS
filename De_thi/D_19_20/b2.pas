uses crt;

var n: integer;

function ngto(n : integer) : integer;
var i, d : integer;
begin
        d := 0;
        for i := 1 to n do
                if n mod i = 0 then
                        d := d + 1;

        ngto := d;
end;

function kosongto(n, i : integer) : boolean;
var j : integer;
        f : boolean;
begin
        f := true;
        for j := i + 1 to n do
                if ngto(j) = 2 then
                        begin
                                f := false;
                                break;
                        end;
        kosongto := f;
end;

procedure Yc1;
var i : integer;
begin
        for i := 1 to n do
                if ngto(i) = 2 then
                        write(i, ' ');
end;

procedure Yc2;
var i : integer;
begin
        writeln;
        i := n;
        while i >= n do
                begin
                        if ngto(i) = 2 then
                                begin
                                        write(i);
                                        break;
                                end
                        else
                                i := i + 1;
                end;
end;

procedure Yc3;
var i, j, d : integer;
begin
        writeln;
        i := 3;
        d := 0;
        while i <= n do
                begin
                        if ngto(i) = 2 then
                                begin
                                        write(i, ' ');
                                        inc(d);
                                        j := i;                                 
                                end;
                        if kosongto(n, i) then
                                break
                        else
                                begin
                                        if d <> 2 then
                                                inc(i)
                                        else
                                                begin
                                                        writeln;
                                                        i := j;
                                                        d := 0;
                                                end;
                                end;
                        
                end; 
end;

procedure Nhap;
begin
        repeat
                write('Nhap n: ');
                readln(n);
        until n > 0;

end;


begin
        clrscr;
        Nhap;
        Yc1;
        Yc2;
        Yc3;

        readln;

end.
