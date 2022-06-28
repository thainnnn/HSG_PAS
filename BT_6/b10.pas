Uses crt;
Var so1,so2,kqua:string;
Procedure LamDayXau(Var st1,st2:string);
{Them so 0 vao truoc xau ngan}
var i:Byte;
Begin
If Length(st1)>Length(st2) Then
For i:=1 To Length(st1)-Length(st2) Do st2:='0'+st2
Else
For i:=1 To Length(st2)-Length(st1) Do st1:='0'+st1;
End;
Function Cong(st1,st2:string):string;
Var i,a,b,c,sodu:Byte;
code:integer;
st,ch:string;
Begin
st:=''; sodu:=0;
LamDayXau(st1,st2);
{Lấy từng số của 2 xâu: từ phải sang trái}
For i:=Length(st1) DownTo 1 Do
Begin
{Đổi ký tự sang số nguyên}
Val(st1[i],a,code);
Val(st2[i],b,code);
{Tính tổng của 2 số a,b vừa lấy ra cho vào biến c}
c:=(a+b+sodu) MOD 10;
{Lấy phần dư của tổng a+b}
sodu:=(a+b+sodu) DIV 10;
{Đổi số nguyên c sang xâu ký tự ch}
str(c,ch);
{Cộng xâu ch vào bên trái xâu kết quả st}
st:=ch+st;
End;
{Xử lý trường hợp số dư cuối cùng >0t}
If sodu>0 Then
Begin
str(sodu,ch);
st:=ch+st;
End;
Cong:=st;
End;
Begin
Write('Nhap so thu nhat: '); Readln(so1);
Write('Nhap so thu hai: '); Readln(so2);
kqua:=Cong(so1,so2);
Writeln('Tong= ',kqua);
Readln;
end.
