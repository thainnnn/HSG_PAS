uses crt;

var s, p : string;
    l : integer;

begin
    readln(s);
    l := length(s);
    
    if l = 10 then
        begin
            p := copy(s, 1, 3);
            if (p = '096') or (p = '097') or (p = '098') then
                writeln('Y')
            else
                writeln('N');
        end
    else
        begin
            p := copy(s, 1, 4);
            if (p = '0162') or (p = '0163') or (p = '0164') or (p = '0165') or (p = '0166') or (p = '0167') or (p = '0168') or (p = '0169') then
                writeln('Y')
            else
                writeln('N');

        end;
end.
