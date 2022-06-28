uses crt;

var f : text;
    s : string;
begin
    assign(f, 'a.txt');
    reset(f);
    readln(f, s);
    writeln(s);
    readln;
end.
