uses crt;

var m, y, d : longint;
const n = 1;

BEGIN

	write('Nhap nam, thang, ngay: '); readln(y, m, d);

	CASE thang OF
		1,3,5,7,8,10,12: 
			if d + n <= 31 then d := d + 1 else
				begin
					d := 1;
					y := y + 1;
				end;
		4,6,9,11:
		2:
	END;

END.
