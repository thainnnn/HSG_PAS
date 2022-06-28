unit t1;

Interface
var n, s : longint;
procedure Nhap;
procedure Xuat;
procedure Xuat1;
Function Reverse(n : longint) : longint;
// Function Reverse1(n : longint) : longint;

IMPLEMENTATION
procedure Nhap;
begin
	write('Nhap n: '); readln(n);
end;


Function Reverse(n : longint) : longint;
begin
	if n = 0 then
		Reverse := 0 else
			begin
				s := s * 10 + n mod 10;
				Reverse := Reverse(n div 10);
			end;
	Reverse := s;
end;

procedure Xuat1;
// Function Reverse1(n : longint) : longint;
begin
	while n <> 0 do
		begin
			write(n mod 10);
			n := n div 10;
		end;


end;

procedure Xuat;
begin
	s := 0;
	writeln(Reverse(n));
	// s := 0;
	// writeln(Reverse1(n));
end;
END.
