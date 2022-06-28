uses crt;

type mang = array[1..100] of longint;

var A : mang;
    i, n, m, j, s, max, k : longint;

procedure Nhap;
begin
    write('Nhap so phan tu n: '); readln(n);
    write('Nhap so phan tu cua day con: '); readln(m);

    for i := 1 to n do
        begin
            write('A[', i, '] = ');
            readln(A[i]);
        end;
end;

function SM(i, m : longint; A : mang) : longint;
begin
    SM := 0;
    for j := i to i + m - 1 do
        SM := SM + A[j];
end;

procedure Xuli;
begin
    max := SM(1, m, A);
    k := 1; 
    for i := 2 to n - m + 1 do
        s := SM(i, m, A); 
        if max < s then                
            begin
                max := s;
                k := i;
            end;
    write('Mang con :');
    for i := k to m + k - 1 do
        write(A[i]:5);

end;
begin
    Nhap;
    Xuli;

    writeln;
end.
