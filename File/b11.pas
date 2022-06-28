Var f:text;

m,n:integer;

Begin

m:=10; n:=4;

assign(f, 'son.inf'); reWrite(f);

Writeln(f, m,' ',n);

close(f);

assign(f, 'son.inf'); reset(f);

Readln(f, m, n);

close(f);

Writeln(m:4, n:4);

Readln;

End.