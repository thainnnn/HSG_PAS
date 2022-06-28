uses crt;

var s : string;
	i, j : byte;
	f : boolean;

function k(s : string) : boolean;
begin
	if length(s) = 1 then
		f := true
	else
		begin
			i := 1;
			j := length(s);
			while (i <= length(s) div 2) and (j >= length(s) div 2) do
				begin
					if s[i] <> s[j] then
						begin
							f := false;
							break;
						end else
							f := true;
					i := i + 1;
					j := j - 1;
				end; 
		end;
		k := f;
end;

function dequy(s : string) : Boolean;
begin
	if (length(s) = 0) or (length(s) = 1) then dequy := true 
	else
		if s[1] <> s[length(s)] then dequy := false
		else
			begin
				delete(s, 1, 1);
				delete(s, length(s), 1);
				dequy := dequy(s);
			end;		
end;

begin
	write('Nhap xau s: '); readln(s);
	writeln(k(s));
	write(dequy(s));
	readln;
end.