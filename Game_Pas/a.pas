uses crt;

var A : array[1..3, 1..3] of char;
	i, j, d, v: byte;
	p : char;
	run : boolean;

procedure X;
begin
	d := 49;
	for i := 1 to 3 do
		for j := 1 to 3 do
			begin
				A[i, j] := chr(d);
				d := d + 1;
			end;

end;

procedure Luot;
begin
	writeln('Luot ', d);
end;

procedure Nhap;
begin
	write(p, ' Nhap vi tri: '); readln(v);
end;

procedure Xuli;
begin
	case v of
		1 : A[1, 1] := p;
		2 : A[1, 2] := p;
		3 : A[1, 3] := p;
		4 : A[2, 1] := p;
		5 : A[2, 2] := p;
		6 : A[2, 3] := p;
		7 : A[3, 1] := p;
		8 : A[3, 2] := p;
		9 : A[3, 3] := p;
	end;
end;

procedure O;
begin
	run := false;
	writeln(p, ' Win!');
end;

procedure St;
var m : byte;
begin
        for m := 1 to 3 do
		if (A[m, 1] = p) and (A[m, 2] = p) and (A[m, 3] = p) then O;
	for m := 1 to 3 do
		if (A[1, m] = p) and (A[2, m] = p) and (A[3, m] = p) then O;
	if (A[1,1] = p) and (A[2,2] = p) and (A[3,3] = p) then O else
		if (A[1,3] = p) and (A[2,2] = p) and (A[3,1] = p) then O;

end;

procedure Swap;
begin
	if p = 'X' then
		p := 'O' else
			p := 'X';
end;

procedure Xuat;
begin
	for i := 1 to 3 do
		begin
			for j := 1 to 3 do
				write(A[i, j]:5);
			writeln;
		end;
end;

procedure Main;
begin
	clrscr;
	run := true;
	X;
	Xuat;
	p := 'X';
	d := 1;
	while run do
		begin
			Luot;
			Nhap;
			Xuli;
			Xuat;
			St;
			Swap;
			d := d + 1;
			if (d = 10) and (run = true) then
				begin
					writeln('Hoa');
					break;
				end;
		end;
	readln;
end;

BEGIN
	Main;
END.
