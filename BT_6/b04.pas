Uses Crt;
Var St:String;

Procedure XoaTrangThua(Var St:String);
Begin
    While St[1]=#32 Do 
        Delete(St,1,1);
    While St[Length(St)]=#32 Do 
        Delete(St,Length(St),1);
    While POS(#32#32,St)<>0 Do 
        Delete(St,POS(#32#32,St),1);

End;

Begin
    Write('Nhap xau St: '); Readln(St);
    XoaTrangThua(St);
    Write('Xau sau khi xoa cac ky tu trang thua: ', St);
    Readln;
End.
