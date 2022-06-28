uses crt;

var i : integer;

BEGIN
    clrscr;

    for i := 1 to 43 do
        if i * 2 + (43 - i) * 4 = 100 then
            writeln('Ga: ', i,' Tho: ', 43 - i);
    readln;
END.
