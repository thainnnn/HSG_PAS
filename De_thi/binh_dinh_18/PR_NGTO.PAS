uses crt;

const max = 1000000;
var fi, fo : text;
	n, i, j : integer;
	a : array[1..max] of boolean;
	b : boolean;
	

begin
	assign(fi, 'PR_NGTO.INP'); reset(fi);
	assign(fo, 'PR_NGTO.OUT'); rewrite(fo);

	readln(fi, n);

	fillchar(a, n, True);
	a[1] := false;

	i := 2;
	while i <= n do
		begin
			{while a[i] do inc(i);}
			if a[i] then
				begin
					j := 2;
					while i * j <= n do
						begin
							a[i * j] := false;
							inc(j);
						end;
				end;
			inc(i);
		end;

	if a[n] then
		writeln(fo, n)
	else
		begin
			for i := n downto 2 do
				if a[i] and a[n - i] then
					begin
						writeln(fo, i, #32, n - i);
						b := true;
						break;
					end;
			if b = false then
				for i := n downto 2 do
					if b = false then
						for j := n - i downto 2 do
							if(a[i] and a[j] and a[n - i - j]) then
								begin
									writeln(fo, i, #32, j, #32, n - i - j);
									b := true;
									break;
								end;
		end;
	
	close(fi);
	close(fo);
end.
 
