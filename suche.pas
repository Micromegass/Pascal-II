
program name (input, output); 

	const
	MAX = 100;
	
	type
	tIndex = 1..MAX;
	zahlenarray = array[tIndex] of integer;


	var 
	zahlen : zahlenarray; 
	suchwert : integer; 
	i : integer; 
	eingabezahl : integer; 
	eingabe: integer; 
	

begin 
	
	write('wie viele Zahlen?: ');
	readln(eingabezahl);
	
	for i:=1 to eingabezahl do 
	begin
		readln(eingabe);
		zahlen[i] := eingabe
	end;
	
	writeln('Suchwert eingeben');
	readln(suchwert); 
	
	for i := 1 to eingabezahl do 
	begin
		if suchwert = zahlen[i] then 
		write('Position: ', i)
	end 


end.
