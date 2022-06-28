uses crt;

var s, s1 : string;

function reverse(s : string) : string;
var i : integer;
begin
	for i := length(s) downto 1 do
		s1 := s1 + s[i];

	reverse := s1;
end;



begin
	write('Nhap xau: '); readln(s);

	writeln(Reverse(s));

	writeln(dequy(s));
	readln;
end.