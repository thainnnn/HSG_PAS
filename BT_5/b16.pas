uses crt;

type Mang = array[1..100] of longint;
  
var A, B : Mang;
    i, n, m : integer;

procedure Nhap(n : integer; var A : Mang);
begin
    for i := 1 to n do
        begin
            write('[', i, '] = ');
            readln(A[i]);
        end;
end;


function T(x, n : integer; A : Mang) : boolean;
var f : boolean;
begin
    f := false;
    for i := 1 to n do
        if x = A[i] then
            begin
                f := true;
                break
            end else
                f := false;
    T := f;
    
                        
end;

function Thu (m, n : integer; A,B : Mang) : boolean;
var f : boolean;
begin
    f := false;
    for i := 1 to m do
        if not T(B[i], n, A) then
            begin
                f := false;
                break
            end else
                f := true;
    Thu := f;   
end;

begin
    write('Nhap do dai n day a: '); readln(n);
    writeln('Nhap day a:' );
    Nhap(n, A);

    write('Nhap do dai m day b: '); readln(m);
    writeln('Nhap day b:' );
    Nhap(m, B);

    
    if Thu(m, n, A, B) = false then
        writeln('Khong') else
            writeln('Co');
end.
