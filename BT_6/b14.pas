uses crt;

var s : string;	
	i, j, p : byte;
begin
	write('Nhap xau s: '); readln(s);
		
	j := length(s);
	for i := length(s) downto 1 do
		begin
			if s[i] = #32 then
				begin
					for p := i + 1 to j do 
						write(s[p]);
					j := i - 1;
					write(#32);
				end;
			if i = 1 then
				for p := i to j + 1 do
					write(s[p]);
		end;
	readln;
end.