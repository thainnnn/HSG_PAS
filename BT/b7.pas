uses crt;

var k, n, s : longint;

begin
    write('Nhap so n: '); readln(n);

    s := 0;

    while n <> 0 do
        begin
            k := n mod 10;
            n := n div 10;
            s := s + k;
        end;
    writeln(s);
    readln;
            
end.