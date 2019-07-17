
program leafleft (input, output) ; 



	type 
	tRefBinBaum = ^tBinBaum; 
	tBinBaum = record
				info : integer; 
				links : tRefBinBaum;
				rechts : tRefBinBaum
				end; 



	function leafL (inRefWurzel: tRefBinBaum) : tRefBinBaum; 
	
	var 
	Zeiger : tRefBinBaum;
	
	begin 
	
		inRefWurzel := inRefWurzel^.links;
		 Zeiger := inRefWurzel^.links;
		
		
		if (Zeiger^.links = nil) and (Zeiger^.rechts = nil) then 
		leafL := Zeiger
		else
		 
		 
		 if (Zeiger^.links = nil) then 
		 leafL((inRefWurzel^.rechts))
		 else 
			if (Zeiger^.rechts = nil) then
			leafL((inRefWurzel^.links))
		else 
		begin
		 leafL((inRefWurzel^.rechts));
		 leafL((inRefWurzel^.links))
		end
	
	end; 
	
	
	begin 
	
	end.
