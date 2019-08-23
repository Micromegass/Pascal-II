
program WasPassiert (input, output);
                                 
 var
 a,b : integer;

begin
 readln ( a );
 readln ( b );
 while ( a mod b <> 0 ) do
 begin
   if ( a < b ) then
     b := b - a
   else
     a := a - b;
 end;
 writeln (b)
end.
