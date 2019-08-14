program WasPassiert(input,output); 
type
  tNatZahl = 0..maxint;
var
  a:tNatZahl;
  b:tNatZahl;
  x:tNatZahl;
begin
x:=0;
writeln('Geben Sie zwei natürliche Zahlen ein: '); readln(a);
readln(b);
if a<b then
begin
    b:=a+b;
    a:=b-a;
    b:=b-a
end;
while a>=b do begin
a:=a-b;
x:=x+1 end;
writeln('Ergebnis: ',x,' ',a) end.
