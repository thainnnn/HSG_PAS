Var tfin, tfou: string;

fin, fou: text;

n, i, j: integer;

a: array[1..100] of string[23];

atg: string[23];

(*==========================================*)

Function thutu(hvt:string):string;

Var i, j, l, l1: byte;

ten: string[8];

g, tg: char;

Begin

For i:=1 to 23 do hvt[i]:=upcase(hvt[i]);

If (copy(hvt,21,3)='NAM') then g:='b' else g:='a';

ten:=' ';

i:=20;

While (hvt[i]=' ') do dec(i);

j:=1;

While (hvt[i]<>' ') do

Begin

ten[j]:=hvt[i];

dec(i);

inc(j);

End;

l1:=i;

l:=j-1;

For i:=1 to (l div 2) do

Begin tg:=ten[i]; ten[i]:=ten[l-i+1]; ten[l-i+1]:=tg; End;

thutu:=g+ten+copy(hvt,1,l1);

End;

(*==========================================*))

Begin

Write('Đọc số liệu ghi từ file: '); Readln(tfin);

assign(fin, tfin); reset(fin);

i:=1; {Đọc file tfin}

While not(seekeof(fin)) do

Begin

Readln(fin, a[i]);

inc(i);

End;

n:=i-1;

For i:=1 to n-1 do

For j:=i+1 to n do

If (thutu(a[i])>thutu(a[j])) then {sắp xếp lại}

Begin atg:=a[i];a[i]:=a[j];a[j]:=atg; End;

close(fin);

Write('Ghi số liệu ra file: '); Readln(tfou); {ghi ra file tfou}

assign(fou, tfou); rewrite(fou);

For i:=1 to n do Writeln(fou, a[i]);

close(fou);

assign(fou,tfou); {kiểm tra} reset(fou);

For i:=1 to n do

Begin Readln(fou, atg); Writeln(atg); End;

close(fou);

Readln;

End.