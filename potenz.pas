


program pot (input, output) ; 


	function potenziere(inZahl: integer; Potenz : integer) : integer; 
	
	var 
	result, i : integer; 
	
	begin 
		result := 1; 
		for i:=1 to Potenz do 
			result := result * inZahl;
			
		potenziere := result
	end; 


begin 

write(potenziere(5,3)); 


end.
