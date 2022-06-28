uses crt;

type mang = array[1..1000] of longint;

var n, k, s : integer;
        A, B : mang;

function Tim (A : mang; i : integer) : boolean;
var j : integer;
        f : boolean;
begin
        f := false;
        for j := 1 to n do
                if A[j] = i then
                        begin
                                f := true;
                                break;        
                        end;    
        Tim := f;
end;

procedure Nhap;
var i : integer;
begin
        s := 0;
        repeat
                write('n = ');
                readln(n);
        until n > 0;
        for i := 1 to n do 
                begin
                        readln(A[i]); 
                        s := s + A[i];          
                end;   
        write('k = ');
        readln(k);
end;

procedure Yc1;
var i, d : integer;
begin
        d := 0;
        s := round(s / n);
        for i := 1 to n do
                if A[i] > s then
                        inc(d);
        writeln(d);   
end;

procedure Yc2;
var i, max, min : longint;
begin
        max := A[1];
        min := A[1];
        for i := 1 to n do
                begin
                        if max < A[i] then
                                max := A[i];
                        if min > A[i] then
                                min := A[i];
                end;
        for i := min to max do
                if not Tim(A, i) then
                        write(i, ' ');
                              

end;

procedure Yc3;
var i, d : integer;
f : boolean;
begin
        d := 0;
        f := false;
        for i := 1 to n do
                if A[i] > 0 then
                        begin
                                inc(d);
                                if d = k then
                                        begin
                                                f := true;
                                                break;
                                        end; 
                        end

                else
                        d := 0;         
        writeln;
        if f = true then
                writeln('CO')
        else 
                writeln('KHONG');


end;

procedure Yc4;
var i, j : integer;
begin
        j := 1;
        for i := 1 to n do
                if not Tim(B, A[i]) then
                        begin
                                 B[j] := A[i];
                                 j := j + 1;
                        end;
        for i := 1 to j - 1 do
                write(B[i], ' ');
end;

begin
        Nhap;
        Yc1;
        Yc2;
        Yc3;
        Yc4;

end.
