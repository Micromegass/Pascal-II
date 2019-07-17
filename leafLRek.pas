

program ll (input, output) ; 




	type 
	tRefBinBaum = ^tBinBaum; 
	tBinBaum = record 
				info : integer; 
				links : tRefBinBaum; 
				rechts : tRefBinBaum
				end; 
				
				
				
	function leafL (inRefWurzel : tRefBinBaum) : tRefBinBaum; 

		var 
		Zeiger : tRefBinBaum; 
		
		
		begin 
		
		  Zeiger := inRefWurzel; 
		  if Zeiger^.links <>  nil then 
		  leafL(Zeiger^.links) 
		  else 
			if Zeiger^.rechts <> nil then
			 leafL(Zeiger^.rechts); 
		  
		  leafL := Zeiger; 
		
		end; 
		
		
	
	
	function leftLIt (inRefWurzel : tRefBinBaum) : tRefBinBaum; 
	
	var 
	Zeiger : tRefBinBaum; 
	
	
	begin 
	
	Zeiger := inRefWurzel; 
	while Zeiger^.links <> nil do
		if (Zeiger^.links = nil) and (Zeiger^.rechts <> nil) then
		Zeiger := Zeiger^.rechts
		else 		
		Zeiger := Zeiger^.links; 
		
	leftLIt := Zeiger

			
	
	
	end;
		
	
	
	
	
	begin 
	
	
	end. 
