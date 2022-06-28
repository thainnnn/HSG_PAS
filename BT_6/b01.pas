uses crt;

var s : string[100];
    i : integer;

begin
    write('Nhap xau: '); readln(s);
    
    for i := 1 to length(s) do
        s[i] := UpCase(s[i]);
    writeln(s);
end.
