


program x (input, output) ; 

	type 
	tRefBinBaum = ^tBinBaum ; 
	tBinBaum = record 
				info : integer; 
				next : tRefBinBaum
				end; 
				
				



	function pd (inoutRefAnfang : tRefBinBaum ) : tRefBinBaum; 
	
		var 
		Zeiger, 
		ZeigerHinten : tRefBinBaum; 
		
		begin
		
		Zeiger := inoutRefAnfang; 
		ZeigerHinten := inoutRefAnfang;
		while Zeiger <> nil do 
		  if Zeiger^.info = 1 then 
		   Zeiger := Zeiger^.next
		  else 
		  begin 
		   Zeiger^.info := ZeigerHinten^.info + Zeiger^.info;
		   ZeigerHinten := ZeigerHinten^.next; 
		   Zeiger := Zeiger^.next
		   end ;
		pd := inoutRefAnfang
		end;
		
		


begin 




end.
