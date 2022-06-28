Uses crt;
Var st:string;
{Hàm đảo bit ký tự c}
Function DaoBit(c:char):char;
Var n,i,s,bitcuoi,Mask:byte;
Begin
	{Đổi ký tự sang số}
	n:=ORD(c);
	{s: kết quả đảo bit, Mask: mặt nạ dùng để bật bit thứ i}
	s:=0;
	Mask:=128;
	For i:=1 To 8 Do {duyệt qua 8 bit của n}
		Begin
			{Lấy bit cuối cùng của n: bit cực phải}
			bitcuoi:=n AND 1;
			n:=n shr 1; {loại bỏ bit cuối cùng: n:=n DIV 2}
			{Bật bit thứ i lên: từ trái sang phải}
			if bitcuoi=1 then s:=s OR Mask;
			Mask:=Mask shr 1; { Mask:= Mask DIV 2}
		End;
	DaoBit:=CHR(s);
End;
Function MaHoa(st:string):string;
Var i:Byte;
Begin
	{Đảo bit từng ký tự trong xâu st}
	For i:=1 To Length(st) Do st[i]:=DaoBit(st[i]);
	Mahoa:=st;
End;
Begin
	Write('Nhap xau: '); Readln(st);
	st:=MaHoa(st);
	Writeln('Xau sau khi ma hoa: ',st);
	Readln;
	st:=MaHoa(st);
	Writeln('Xau sau khi giai ma: ',st);
	Readln;
End.