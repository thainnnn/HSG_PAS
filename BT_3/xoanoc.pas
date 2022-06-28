uses crt;
const x:array[0..3] of integer =(0,1,0,-1);
      y:array[0..3] of integer =(1,0,-1,0);
var a:array[0..101,0..101] of longint;
    n,i,j,q,k:longint;
begin
  clrscr;
  readln(n);
  for i:=0 to n +1 do
    for j:=0 to n +1 do
      if (i=0) or (i=n+1) or (j=0) or (j=n+1) then a[i,j]:=1 else a[i,j]:=0;
  i:=1; j:=0; q:=0; k:=0;
  repeat
     if a[i+x[q],j+y[q]] <>0 then q:=(q+1) mod 4;
     i:=i+x[q]; j:=j+y[q]; k:=k+1;
     a[i,j]:=k;
  until k= n*n;
  for i:=1 to n do
   begin
     for j:=1 to n do write(a[i,j]:4);
     writeln;
   end;
  readln;
end.