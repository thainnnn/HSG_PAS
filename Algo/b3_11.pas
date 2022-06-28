uses crt;

var fin, fout : text;
	a : integer;

function nt(a : integer) : boolean;
var i : integer;
begin
	nt := false;
	if a < 2 then exit;
	for i := 2 to a div 2 do 
		if a mod i = 0 then exit;
	nt := true;
		
end;	

begin
	assign(fin, 'b3_11_i.txt');
	assign(fout, 'b3_11_o.txt'); rewrite(fout);
	reset(fin);

	read(fin, a);

	writeln(fout, nt(a));

	close(fin);
	close(fout);



end.