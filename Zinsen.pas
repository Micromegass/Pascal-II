
program xy (input, output) ; 
{....}


  var 
  Betrag : real; 
  Zinsen, Laufzeit : integer; 
  i : integer;



begin 


readln(Betrag); 
readln(Zinsen); 
readln(Laufzeit); 


for i := 1 to Laufzeit do 
	begin 
	Betrag:=Betrag*(1+Zinsen/100);    
	writeln('Nach ', i, ' Jahren ', Betrag:2:2)
	end;


end.
