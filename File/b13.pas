var fin, fou: text;
    n, m, i, j, k, kmax: integer;
    a: array[1..100] of real;
    atg: real;

Begin
    assign(fin, 'input.txt'); reset(fin);
    assign(fou, 'output.txt'); rewrite(fou);
    Readln(fin, n); Writeln(fou, n);
    writeln(n);

    For i:=1 to n do
        Begin
            j:=1; 
            While not(seekeoln(fin)) do
                Begin
                    Read(fin,a[j]);
                    inc(j);
                End;
            Readln(fin);
            m:=j-1;

            For j:=1 to m-1 do
                Begin
                    kmax:=j;
                    For k:=j to m do
                        If (a[k]>a[kmax]) then kmax:=k;
                        atg:=a[j];
                        a[j]:=a[kmax];
                        a[kmax]:=atg;
                End;

            For j:=1 to m do
                Write(fou,a[j]:8:2);
                Writeln(fou);
            End;

    close(fin); close(fou);
    assign(fou,'output.txt'); reset(fou);

    Readln(fou,n);

    For i:=1 to n do
        Begin
            While not(seekeoln(fou)) do
                Begin
                    Read(fou,atg);
                    Write(atg:8:2);
                End;
            Readln(fou);
            Writeln;
        Writeln;
        End;

    close(fou);
    Readln;

End.
