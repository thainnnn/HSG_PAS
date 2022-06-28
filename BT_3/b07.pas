Uses Crt;
Const Epsilon=1E-4;
Var Pi,t:real;
    i,s:Integer;
Begin
	Pi:=4;  i:=1; s:=-1;
	t:=4/(2*i+1);
	While t>Epsilon Do
		Begin
			Pi:=Pi+s*t;
			s:=-s; i:=i+1;
			t:=4/(2*i+1);
		End;
	Writeln('So Pi = ',Pi);
	Readln;
End.
