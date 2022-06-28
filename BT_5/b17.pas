uses crt;

type Mang = array[1..100] of longint;
  
var A : Mang;
    j, i, n, m, k : integer;

procedure Nhap(n : integer; var A : Mang);
begin
    clrscr;
    for i := 1 to n do
        begin
            write('[', i, '] = ');
            readln(A[i]);
        end;
end;

procedure Xuli;
var d : integer;
begin

    m := 1;
    i := 1; 
    k := 1;
    while A[i] < A[i + 1] do
        begin
            m := m + 1;
            i := i + 1;
        end;
    for i := 2 to n do
        begin
            d := 1;
            j := i;
            while A[j] < A[j + 1] do
                begin
                    d := d + 1;
                    j := j + 1;
                end;
            if m < d then
                begin
                    m := d;
                    k := i;
                end;
        end;    
    d := k;
    while k < m + d do
        begin
            write(A[k]:5);
            k := k + 1;
        end;
    writeln;
    readln;
end;

begin
    write('Nhap do dai n day a: '); readln(n);
    writeln('Nhap day a:' );
    Nhap(n, A);
    Xuli;
end.
