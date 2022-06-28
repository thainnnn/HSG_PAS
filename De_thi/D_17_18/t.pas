uses crt;

var a, b : array[1..100] of integer;
    n, i, m : integer;

procedure Yc1;
var f : boolean;
begin
    f := true;
    for i := 1 to n - 1 do
        if a[i] <= a[i + 1] then
            begin
                f := false;
                break;
            end;
    if f = true then
        writeln('TRUE')
    else
        writeln('FALSE');
end;

procedure Yc2;
var t, k : integer;
begin
    k := 1;
    for i := 1 to n do
        if b[i] mod 2 = 1 then
            begin
                t := b[i];
                b[i] := b[k];
                b[k] := t;
                inc(k);
            end;
    for i := 1 to n do
        write(b[i], #32);
end;

procedure Yc3;
begin
    writeln;
    for i := 1 to n do
        if i <> m then
            write(a[i], #32);
end;


begin
    readln(n);
    for i := 1 to n do
        begin
            read(a[i]);
            b[i] := a[i];
        end;
    readln(m);
    Yc1;
    Yc2;
    Yc3;

end.
