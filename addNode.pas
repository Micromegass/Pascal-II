

program AddNode (input, output) ; 




	type 
	tRefBinBaum = ^tBinBaum; 
	tBinBaum = record 
				info : integer; 
				links : tRefBinBaum; 
				rechts : tRefBinBaum
				end; 
				
				


	procedure BBKnotenEinfuegen (inZahl :integer; 
								var ioRefWurzel : tRefBinBaum); 
								
								{...}
								
	
	var 
	RefSohn, 
	RefVater : tRefBinBaum; 
	gefunden : boolean; 
	
	
	begin 
	 
	RefSohn := ioRefWurzel; 
	gefunden := false; 
	
	while (RefSohn <> nil ) and (not gefunden) do 
	begin 
	 if RefSohn^.info = inZahl then 
	 gefunden := true
	 else 
	  begin 
	  RefVater := RefSohn; 
	  
	  if inZahl < RefSohn^.info then 
	    RefSohn := RefSohn^.links
	   
	  else 
	    RefSohn := RefSohn^.rechts
	    
	  end
	 end;
	 
	 if not gefunden then 
	 {..}
	 begin 
	 
		new(RefSohn); 
		RefSohn^.info := inZahl;
		RefSohn^.links := nil; 
		RefSohn^.rechts := nil; 
		
		{anfuegen}
		
		if ioRefWurzel = nil then 
		
		ioRefWurzel := RefSohn 
		
		else 
		if inZahl < RefVater^.info then
		RefVater^.links := RefSohn
		else 
		RefVater^.rechts := RefSohn

	 end
	
	
	
	end; 
	
	
begin 

end.
