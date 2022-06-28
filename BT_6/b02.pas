Uses Crt;

Var St:String;
    i:Byte;

Begin
    Write('Nhap xau St: '); Readln(St);
    For i:=1 to length(St) do
        If St[i] IN ['A'..'Z'] Then St[i]:=CHR(ORD(St[i])+32);
    Write('Xau ket qua: ', St);
    Readln;
End.
