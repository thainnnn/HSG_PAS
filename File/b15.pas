Var tfin: string;

fin: text;

n, i, j, snam, snu: integer;

a:

t: boolean;

(*==========================================*)

Function ho(hvt:string):string;

Var i: byte;

h: string;

Begin

i:=1;

While (hvt[i]=' ') do inc(i);

h:='';

While (hvt[i]<>' ') do

Begin

h:=h+upcase(hvt[i]);

inc(i);

End;

ho:=h;

End;

(*==========================================*)

Begin

Write('Đọc số liệu từ file: '); Readln(tfin);

assign(fin, tfin); reset(fin);

i:=1; {đọc file tfin}

While not(seekeof(fin)) do

Begin

Readln(fin, a[i]);

inc(i);

End;

close(fin);

{tính số nam, nữ}

n:=i-1;

snam:=0;

snu:=0;

For i:=1 to n do

If (copy(a[i],21,3)='Nam') then snam:=snam+1

Else snu:=snu+1;

Writeln('Số nam: ',snam,'. Số nữ : ',snu,'.');

{Tìm người chung họ}

For i:=1 to n do

Begin

j:=1;

t:=false;

Repeat

If (ho(a[j])=ho(a[i]))and(j<>i) then t:=true;

inc(j);

Until (t)or(j>n);

If t then Writeln(a[i]);

End;

Readln;

End