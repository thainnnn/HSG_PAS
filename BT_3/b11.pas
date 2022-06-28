Uses crt;
Var N,i,d : longint;
Begin
	Write('Nhap N: '); readln(N);
	If N<2 Then Writeln(N,' khong phai la so nguyen to')
	Else
		Begin
		{Đếm số ước số}
			d:=0;
			For i:=2 To N div 2 Do
				If N MOD i=0 Then	d:=d+1;
		{Kiểm tra}
			If d=0 Then Writeln(N,' la so nguyen to')
				Else Writeln(N, 'khong phai la so nguyen to');
		End; 
	Readln;
End.
