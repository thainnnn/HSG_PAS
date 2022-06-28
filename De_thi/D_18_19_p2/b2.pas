uses crt;
type mang = array[1..100, 1..100] of char;
var s, k : string;
    i, j, n, sum, max : integer; 
    a : mang;

procedure Yc1;
var s1 : string;
begin
    s1 := s;
    n := round(sqrt(length(s1)));
    for i := 1 to n do
        begin
            k := copy(s1, 1, n);
            delete(s1, 1, n);
            for j := 1 to n do
                a[j, i] := k[j];
        end;
    max := 0;
    for i := 1 to n do
        begin
            sum := 0;
            for j := 1 to n do
                sum := sum + ord(a[i, j]);
            if sum > max then
                max := sum
        end;
    for i := 1 to n do
        begin
            sum := 0;
            for j := 1 to n do
                sum := sum + ord(a[i, j]);
            if sum = max then
                begin
                    for j := 1 to n do
                        write(a[i, j], #32);
                    writeln;
                end;
        end;

    writeln(max);
end;

begin
    readln(s);
    Yc1;
end.
