uses crt;

var s1, s2, s, k, c : string;
   
function Tich(s1, s2 : string) : string;
var i, n1, n2, code, t, du : byte;
	s : string;
begin
	k := '';
	val(s2, n2, code);
	du := 0;
	for i := length(s1) downto 1 do
		begin
		 	val(s1[i], n1, code);
		 	t := (n1 * n2 + du) mod 10;
		 	du := (du + n1 * n2) div 10;
		 	str(t, s);
		 	k := s + k;
		end;
	if du > 0 then
		begin
			str(du, s);
			k := s + k;				
		end;

	Tich := k; 	
end;


function Tong(a, b : string; j : byte) : string;
var n1, n2, t, code, du, i : byte;
	ch : string;
begin
	c := '';
	// if length(a) > length(b) then
	// 	b := b + '0' 
	// else 
	// 	if length(a) < length(b) then 
	// 		begin
	// 			a := '00' + a;
	// 			b := b + '0';
	// 		end
	// 	else
	// 		begin
	// 			a := '0' + a;
	// 			b := b + '0';
	// 		end;
	// ////////////////////////////////////////////
	for i := 1 to j do
		b := b + '0';
	for i := 1 to length(b) - length(a) do
		a := '0' + a;
	du := 0;
	for i := length(a) downto 1 do
		begin
			val(a[i], n1, code);
			val(b[i], n2, code);

			
			t := (n1 + n2 + du) mod 10;
			du := (du + n1 + n2) div 10;

			str(t, ch);
			c := ch + c;
		end;
	if du > 0 then
		begin
			str(du, ch);
			c := ch + c;
		end;
	Tong := c;
end;

procedure All_t;
var i, j : byte;
begin
	j := 0;
	s := Tich(s1, s2[length(s2)]);
	// s := Tich(s1, s2[length(s2) - 1]);
	// writeln(s);
	for i := length(s2) - 1 downto 1 do
		begin
			inc(j);
		 	s := Tong(s, Tich(s1, s2[i]), j);
		 	// writeln(Tong(s , Tich(s1, s2[i]), 1));
			// writeln(s);
			// s := Tinh(s, Tong(s , Tich(s1, s2[i]), 1))
		end; 
	writeln(s);
end;

begin
	write('S1 = '); readln(s1);
	write('S2 = '); readln(s2);
	// writeln(Tong(s1, s2[1], 1));
	All_t;



end.
