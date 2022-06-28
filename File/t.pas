Var tfin, tfou: string;

fin, fou: text;

n, i, j: integer;

a: array[1..100] of string[23];

atg: string[23];

Begin

Write('Ð?c s? li?u t? file:'); Readln(tfin);

assign(fin, tfin); reset(fin);

i:=1; {d?c file tfin}

While not(seekeof(fin)) do

Begin

Readln(fin,a[i]);

inc(i);

End;

{s?p x?p l?i}

n:=i-1;

For i:=1 to n-1 do

If (copy(a[i],21,3)='Nam') then

For j:=i to n do

If (copy(a[j],21,3)>='Nu') then

Begin atg:=a[i]; a[i]:=a[j]; a[j]:=atg; End;

close(fin);

{ghi rafile tfou}

Write('Ghi s? li?u ra file: '); Readln(tfou);

assign(fou,tfou); rewrite(fou);

For i:=1 to n do Writeln(fou, a[i]);

close(fou);

{ki?m t ra}

assign(fou,tfou); reset(fou);

For i:=1 to n do

Begin Readln(fou,atg); Writeln(atg); End;

close(fou);

Readln;

End.
