uses crt;

var a, b : string;

procedure Nhap;
begin
    write('A = ');
    readln(a);
    write('B = ');
    readln(b);
end;

procedure Yc1;
var i, j : byte;
    f : boolean;
begin
    f := true;
    i := 1; 
    j := length(a);
    while (i <= length(a) div 2) and (j >= length(a) div 2) do
        begin
            if a[i] <> a[j] then
                begin
                    f := false;
                    break
                end
            else
                begin
                    i := i + 1;
                    j := j - 1;
                end;
        end;
    writeln(f);
end;

procedure Yc2;
var i, d : byte;
begin
    d := 0;
    for i := 1 to length(a) - length(b) + 1 do
        if copy(a, i, length(b)) = b then
            inc(d);
    writeln(d);
end;

begin
    Nhap;
    Yc1;
    Yc2;
end.
