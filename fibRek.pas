



program fib (input, output) ; 


	function fibRek (inZahl : integer) : integer ; 
	
	begin 
		if inZahl = 0 then 
		fibRek := 0 
		else
		if inZahl = 1 then 
		fibRek := 1
		else 
		fibRek := fibRek(inZahl - 1) + fibRek(inZahl - 2)
				
	end; 
	
	
	begin 
	
	write(fibRek(10))
	
	end.
	
	
	
