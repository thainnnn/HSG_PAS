Uses Crt;

Var St:String;
    i,d:Byte;

Begin
    d := 0;
    Write('Nhap xau St: '); Readln(St);
    For i:=1 to length(St) do
        If St[i] IN ['0'..'9'] Then d:=d+1;
    Write('So ky tu chu so trong xau: ', d);
    Readln;
End.
