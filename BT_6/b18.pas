uses crt;

var s, k : string;
	i, j, n, d, code : integer;

begin
	//Nen
	write('Nhap xau de nen: '); readln(s);
        write('Nhap xau de giai nen: '); readln(k);

	d := 1;
	s := s + #32;
	for i := 2 to length(s) do
		begin
			if s[i] = s[i - 1] then
				inc(d);

			if s[i] <> s[i - 1] then
				begin
					write(d, s[i - 1]);
					d := 1;
				end;

		end;
	//Giai
        write('Nhap xau de giai nen: '); readln(k);
	for i := 1 to length(k) do
		if (ord(k[i]) > 48) and (ord(k[i]) < 58) then
			begin
				val(k[i], n, code);
                                for j := 1 to n do
					write(k[i + 1]);
			end;
	readln;
end.
