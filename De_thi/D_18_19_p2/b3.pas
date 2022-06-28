uses crt;

var a, b : array[1..100] of integer;
    n, i, k, j, s, c : integer;

function tim(n : integer) : boolean;
var i : integer;
begin
    tim := false;
    for i := 1 to k do
        if n = b[i] then exit;
    tim := true;
end;
begin
    k := 2;
    readln(n);
    b[1] := 0;
    for i := 1 to n do
        readln(a[i]);
    for i := 1 to n do
        begin
            if tim(a[i]) then
                begin
                    b[k] := a[i];
                    inc(k);
                end;
        end;
    k := k - 1;
    for i := 1 to k do
        begin
            s := 0;
            for j := 1 to n do
                if b[i] = a[j] then
                    inc(s);
            if s > 1 then
                write(b[i], #32);
        end;
    writeln;
    for i := 1 to k do
        begin
            s := 0;
            c := 0;
            for j := 1 to n do
                if b[i] = a[j] then
                    begin
                        inc(s);
                        inc(c);
                    end;
            if s > 1 then
                write(c, #32);
        end;
end.
