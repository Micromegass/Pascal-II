

program fib (input, output) ; 


function fibi (inZahl : integer) : integer; 

	var 
	zweite, 
	dritte, 
	neue,
	count, i : integer; 
	

	begin 
	
	
		neue := 0; 
		count:= 0;
		zweite := 0; 
		dritte := 1; 
		for i:=2 to inZahl do
		begin 
		neue := zweite + dritte; 
		zweite := dritte; 
		dritte := neue; 
		count := count + 1
		end;
		fibi := neue 
	
	end; 




begin 

write(fibi(21));

end.
