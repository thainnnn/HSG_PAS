Var f: text;

fn: string; {Tên file}

n, i: integer;

ht: array[1..100] of string[20];

t: array[1..100] of string[3];

xl: array[1..100] of char;

Begin

Write('Tên file cần đọc: ');Readln(fn);

assign(f,fn); reset(f);

i:=1;

While not(eof(f)) do

Begin

Readln(f,ht[i],t[i],xl[i]);

inc(i);

End;

n:=i-1;

close(f); {kiểm tra}

For i:=1 to n do

Writeln(ht[i],t[i]:4,xl[i]:3);

Readln;

End.