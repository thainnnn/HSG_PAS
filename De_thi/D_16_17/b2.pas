uses crt;

var s : string;
    a, b, r, n, i, k, t, m, code, l : integer;
    
begin
    readln(s);
    k := pos('.', s);

    val(copy(s, 1, k - 1), t, code);
    val(copy(s, k + 1, length(s)), m, code);
    
    

    l := length(s) - k;
    n := 1;
    for i := 1 to l do
        n := n * 10;

    t := n * t + m;
    m := n;
    a := t;
    b := m; 

    while b <> 0 do
        begin
            r := a mod b;
            a := b;
            b := r;
        end;
    writeln(t div a, '/', m div a);
end.
