
program sorting (input, output); 


	const
	MAX = 6;
	
	type
	tIndex = 1..MAX;
	tFeld = array[tIndex] of integer;
	
	var 
	i : tIndex;
	ausenfeld : tFeld;
	Amp : integer;
	Tausch : tIndex;
	
	
	function FeldminimumPos(Feld : tFeld) : integer; 
	
	
		var 
		MinimumPos : tIndex;
		j : tIndex; 
		
		
		begin
			MinimumPos := Feld[1];
			
			for j:= 2 to MAX do 
			begin
				if MinimumPos > Feld[j] then 
				MinimumPos := j
			end; 
			
			FeldminimumPos := MinimumPos; 
		end; 
		
	
	begin 
	
	
	for i := 1 to MAX do
		readln(ausenfeld[i]); 	

	for i :=1 to MAX - 1 do 
	begin 
		Amp := FeldminimumPos(ausenfeld); {minimumposition des arrays gefunden}
		
		Tausch := ausenfeld[Amp]; {speichern wert von minpos in array}
		ausenfeld[Amp] := ausenfeld[i];
		ausenfeld[i] := Tausch
	end; 
	
	writeln;
	for i := 1 to MAX do 
	write(ausenfeld[i]:6);
	writeln
	
	end.		

		
		
		
		
		
		
		

