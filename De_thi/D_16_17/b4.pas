uses crt;

var a : array[1..100] of integer;
    i, j, n, sum, m, k : integer;

begin
    m := 0;
    readln(n);
    
    for i := 1 to n do
        read(a[i]);
    for i := 1 to n do
        begin
            sum := 0;
            for j := 1 to a[i] do
                if a[i] mod j = 0 then
                    inc(sum);
            if sum > m then
                begin
                    m := sum;
                    k := a[i]
                end;

        end;
    writeln(k);
end.
