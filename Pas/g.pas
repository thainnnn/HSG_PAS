{Function GT(a:integer):longint;  
Begin 
    If a=0 then 
        GT:=1 Else 
            GT:=a*GT(a-1); 
End; } 
Function GT (a : integer) : longint; 
Var t, i : integer; 
Begin 
    If a = 0 then GT := 1 
        Else For i := 1 to a do T := T * i; 
        GT := t; 
end; 
Var I, n: integer; 
    T, S:real; 
    
Begin   
    Repeat Write('n= '); readln(n); 
    Until (1 <= n) and (n <= 13) ; 
    S := 1; 
    For i := 1 to n do s := s * (i+1) / (2*i);

    Writeln(s:3:3); 
    T := 0; 
    For i := 1 to n do t := t+1/GT(i); 
    Writeln(t:3:3); 
    readln; 
End.

