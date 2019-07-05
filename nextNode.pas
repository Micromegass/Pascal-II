


program NN (input, output) ; 


	type 
	tRefBinBaum = ^tBinBaum ; 
	tBinBaum = record 
				info : integer; 
				rechts : tRefBinBaum; 
				links : tRefBinBaum
			   end; 
			   
				   
	function nextNode (inRefZeiger : tRefBinBaum) : tRefBinBaum; 
	
	var 
	Zeiger : tRefBinBaum; 
	
	
	begin 
	
		Zeiger := inRefZeiger^.rechts;
		while (Zeiger^.links <> nil) do 
		  Zeiger := Zeiger^.links; 
		nextNode := Zeiger; 
	end; 


begin 

end. 
