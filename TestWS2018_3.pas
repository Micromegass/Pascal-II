
program WasPassiert(input,output);
 var
 a:integer;
 b:integer;
 function check(a,b:integer):boolean;
 begin
 while (b > 0) do
 b := b - a;
 check := (b = 0)
 end;
begin
 readln(a);
 readln(b);
 writeln(check(a,b))
end.
