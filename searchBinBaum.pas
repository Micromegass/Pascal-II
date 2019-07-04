
program testSearchBinBaum (input, output); 



type 
tRefBinBaum = ^tBinBaum; 
tBinBaum = record 
			info : integer; 
			links : tRefBinBaum; 
			rechts : tRefBinBaum
			end;


	function BBKnotenSuchen (inZahl : integer
							  inRefWurzel : tRefBinBaum) : tRefBinBaum
							  
							  
							  
	{Zeiger auf Knoten dessen Wert inZahl ist}
	
	var 
	Zeiger : tRefBinBaum; 
	gefunden : boolean; 
	
	
	begin 
	
		Zeiger := inRefWurzel;
	
		while Zeiger <> nil do 
		begin
		  if inZahl = Zeiger^.info then 
			gefunden := true
		  else
		    if inZahl < Zeiger^.info then 
			  Zeiger := Zeiger^.links
		  else 
			Zeiger := Zeiger^.rechts
	
		end; 
		
		BBKnotenSuchen := Zeiger
	
	
	end;






