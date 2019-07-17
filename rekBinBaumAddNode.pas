



program nbrLookup (input, output) ; 



	type 
	tRefBinBaum = ^tBinBaum; 
	tBinBaum = record
				info : integer; 
				links : tRefBinBaum;
				rechts : tRefBinBaum
				end; 




	procedure AddNode(inZahl : integer; var ioRefWurzel : tRefBinBaum; 
							   var outGefunden : boolean ); 
							   
							   
	var 
	gefunden : boolean; 
	
	begin 
	
		if ioRefWurzel = nil then 
		begin
		  new(ioRefWurzel); 
		  ioRefWurzel^.info := inZahl; 
		  ioRefWurzel^.links := nil; 
		  ioRefWurzel^.rechts := nil; 
		  gefunden := false; 
		end  
		else 
		begin
		  if inZahl < ioRefWurzel^.info then 
		  AddNode(inZahl, ioRefWurzel^.links, gefunden)
		else 
		  if inZahl > ioRefWurzel^.info then 
		   AddNode(inZahl, ioRefWurzel^.rechts, gefunden)
		else 
			gefunden := true; 
		end; 
		
		outGefunden := gefunden; 
		
		
	end; 
	
	
	
	begin
	
	
	
	
	end.
