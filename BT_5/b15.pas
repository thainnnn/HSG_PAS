uses crt;

type Mang = array[1..100, 1..100] of longint;
  
var A, B, C : Mang;
    i, j, n : integer;

procedure Nhap(n : integer; var A : Mang);
begin
    for i := 1 to n do
        for j := 1 to n do
            begin
                write('[', i, ',', j, '] = ');
                readln(A[i, j]);
            end;
end;

procedure Xuat(n : integer; A : Mang);
begin
    for i := 1 to n do
        begin
            for j := 1 to n do
                write(A[i, j]:5);
            writeln;
        end;
end;


procedure Tong;
begin
    for i := 1 to n do
        for j := 1 to n do
            C[i,j] := A[i,j] + B[i,j];
end;

procedure Tich;
begin
    for i := 1 to n do
        for j := 1 to n do
            C[i,j] := A[i,j] * B[j,i];
 
end;
begin
    write('Nhap n: '); readln(n);

    writeln('Nhap mang A:' );
    Nhap(n, A);

    writeln('Nhap mang B:' );
    Nhap(n, B);

    Xuat(n, A);
    writeln('-------------');
    Xuat(n, B);
    
    writeln('-------------');
    Tong;
    Xuat(n, C);

    writeln('-------------');
    Tich;
    Xuat(n, C);

end.
