uses crt;

var d : array['A'..'Z'] of byte;
	s : string;
	c : char;
	i : byte;

begin
	write('Nhap xau s: '); readln(s);

	for c := 'A' to 'Z' do
		d[c] := 0;
	for i := 1 to length(s) do
		if upcase(s[i]) in ['A'..'Z'] then
			inc(d[upcase(s[i])]);

	for c := 'A' to 'Z' do
		if d[c] > 0 then 
			writeln(c, ' xuat hien ', d[c]);	
	readln;
end.