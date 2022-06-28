Const

st1='11';

st2='010';

Var fin, fou: text;

l, p: integer;

st: string;

(*==========================================*)

Procedure ghi1(i:integer);

Begin

st[i]:='0';

st[i+1]:='0';

Writeln(fou, st);

End;

(*==========================================*)

Procedure ghi2(i:integer);

Begin

st[i+1]:='0';

Writeln(fou, st);

End;

(*==========================================*)

Begin

assign(fin, 'input.txt'); reset(fin);

Readln(fin, st);

close(fin);

l:=length(st);

If ((st[l]='1')and(st[l-1]='0'))or((st[1]='1')and(st[2]='0')) then

Writeln('Không thể biến đổi được!')

Else

Begin

assign(fou,'output.txt'); rewrite(fou);

Writeln(fou,st);

If (st[l]='1')and(st[l-1]='1') then ghi1(l-1);

Repeat { biến đổi xâu con '11' }

p:=pos(st1,st);

If (p<>0) then ghi1(p);

Until (p=0);

Repeat {biến đổi xâu con '010' }

p:=pos(st2,st);

If (p<>0) then ghi2(p);

Until (p=0);

close(fou);

{kiểm tra}

assign(fou,'output.txt'); reset(fou);

While not(seekeof(fou)) do

Begin

Readln(fou,st); Writeln(st);

End;

close(fou);

End;

Readln;

End.