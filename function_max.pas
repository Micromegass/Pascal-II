



program Maximum (input, output); 

	
	function Max (x, y : integer) : integer; 
	{bestimmt max aus 2 Werten}
		var
		ergebnis : integer; 
	
	begin 
		if x > y then 
			ergebnis := x
		else 
			ergebnis := y; 
		
	Max := ergebnis
	
	end;


begin 

	write(Max(4, 7));

end.
