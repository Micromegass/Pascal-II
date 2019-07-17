program PO (input, output) ;


	type 
	tRefBinBaum = ^tBinBaum; 
	tBinBaum = record 
				info : integer; 
				links : tRefBinBaum; 
				rechts : tRefBinBaum
				end; 
				



	procedure preorder(inRefWurzel : tRefBinBaum); 
		
	
	begin 
		writeln(inRefWurzel^.info); 
		preorder(inRefWurzel^.rechts); 
		preorder(inRefWurzel^.links)
	end; 
	
	
	
	begin 
	
	end. 
