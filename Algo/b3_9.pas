uses crt;

var 
    fin, fout : text;
    a, b : integer;

function UCLN(a, b : integer) : integer;
begin
    if b = 0 then UCLN := a
    else UCLN := UCLN(b, a mod b);

end;

begin
    assign(fin, 'b3_9_intput.txt');
    assign(fout, 'b3_9_output.txt');

    reset(fin);
    read(fin, a, b);

    rewrite(fout);

    rewrite(fout);
    writeln(fout, UCLN(a, b));
    writeln(fout, a * b / UCLN(a, b):0:2);

    close(fin);
    close(fout);
end.
