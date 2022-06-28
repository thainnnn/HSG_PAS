uses crt;

var s1, s2, k : string;
	i : byte;

procedure Day;
begin
	if length(s1) > length(s2) then
		for i := 1 to length(s1) - length(s2) do 
			s2 := '0' + s2 
	else
		for i := 1 to length(s2) - length(s1) do 
			s1 := '0' + s1;

end;

procedure Tinh;
var n1, n2, t, code, du : byte;
	ch : string;
begin
	Day;
	k := '';
	du := 0;
	for i := length(s1) downto 1 do
		begin
			val(s1[i], n1, code);
			val(s2[i], n2, code);

		
			t := (n1 + n2 + du) mod 10;
			du := (du + n1 + n2) div 10;

			str(t, ch);
			k := ch + k;
		end;
	if du > 0 then
		begin
			str(du, ch);
			k := ch + k;
		end;
	writeln(k);
end;

begin
	writeln('Nhap s1: '); readln(s1);
	writeln('Nhap s2: '); readln(s2);

	// k := '';
	Tinh;
	readln;

end.