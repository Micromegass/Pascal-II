program x (input, output) ; 

	type
	tFeld = array[0..10] of integer; 
	
	var 
	i, j, Zahl : integer; 
	myfeld : tFeld;

	procedure c (var ioFeld : tFeld) ; 
	
	begin
		for i := 1 to 10 do 
		begin
		  for j:=i+1 to 10 do 
			 if ioFeld[i]= ioFeld[j] then
			   ioFeld[j] := 0;
		end
	end; 
	
	
	
	
begin 

for i:=1 to 10 do 
begin
	write('Zahl');
    readln(Zahl);
    myFeld[i] := Zahl
    
end;  


c(myfeld); 
for i:= 1 to 10 do 
	write(myfeld[i]);
	


end.
