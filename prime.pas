
program PN (input, output); 


	function isPrime (i : integer) : boolean; 
	{returns True when PN, false if not}
	
		var 
		laufzahl : integer;
		
		begin 
			if i < 2 then 
			isPrime := false
			else 
			begin 
			isPrime := true;
				for laufzahl := 2 to i -1 do 
					if i mod laufzahl = 0 then 
					isPrime := false
			end
		end;




begin 





end .
