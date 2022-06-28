Var fin, fou: text;

st, st1: string;

l, p: byte;

Begin

assign(fin, 'p4216.pas'); reset(fin);

assign(fou, 'blmoi.pas'); rewrite(fou);

st1:='';

While not(seekeof(fin)) do

Begin

Readln(fin,st);

st1:=st1+' '+st;

Repeat

l:=length(st1);

p:=pos(';', st1);

If (p<>0) then

Begin

st:=copy(st1, 1, p);

Writeln(fou, st);

st1:=copy(st1, p+1, l-p);

End;

Until (p=0);

End;

Writeln(fou, st1); close(fin); close(fou);

assign(fou, 'blmoi.pas'); reset(fou);

While not(seekeof(fou)) do

Begin Readln(fou, st); Writeln(st); End;

close(fou);

Readln;

End