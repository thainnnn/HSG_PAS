uses crt;

var p, c : integer; 
Begin
	randomize;
	c := random(3);

	write('Hay nhap 0 (dam) / 1 (la) / 2 (keo): '); 
	readln(p);

	writeln('-------------');

	Begin
		if c = 0 then
			writeln('May chon: dam') else
				if c = 1 then
					writeln('May chon: la') else
						writeln('May chon: keo');
	End;

	Begin
		if p = 0 then
			writeln('Ban chon: dam') else
				if c = 1 then
					writeln('Ban chon: la') else
						writeln('Ban chon: keo');
	End;
	

	Begin
		if p = c then
			writeln('Hoa') else
				Begin
					if p = 0 then
						Begin
							if c = 1 then
								writeln('Thua') else
									if c = 2 then
										writeln('Thang');
						End;

					if p = 1 then
						Begin
							if c = 0 then
								writeln('Thua') else
									if c = 2 then
										writeln('Thang');
						End;

					if p = 2 then
						Begin
							if c = 0 then
								writeln('Thua') else
									if c = 1 then
										writeln('Thang');
						End;
				End;
	End;

	writeln('------------');

	readln;

End.