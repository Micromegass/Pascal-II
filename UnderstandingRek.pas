



program UR (input, output)  ; 

	const
	FELDGROESSE = 5; 
 
	type 
	tIndex = 1..FELDGROESSE;
	tFeld = array[tIndex] of integer; 


	var 
	myarr : tFeld; 
	i, ergebnis: tIndex; 
	Zahl : integer;
	
	 


	function MaxRecArray (inMaxPos : tIndex; inFeld : tFeld) : tIndex; 
	{Bestimt rekursiv das Maximum von arr}
	
	
	var 
	lokMaxPos : tIndex; 
	
	begin 
	
		if inMaxPos = FELDGROESSE then 
		{Abbruch}
		  MaxRecArray := inMaxPos
		else 
		  begin
		  lokMaxPos := MaxRecArray(inMaxPos + 1, inFeld); 
			if inFeld[lokMaxPos] < inFeld[inMaxPos] then 
			  MaxRecArray := inMaxPos
		    else 
			  MaxRecArray := lokMaxPos
			end
	end;

begin

 for i := 1 to FELDGROESSE do 
 begin
	write('Zahl eingeben: '); 
	readln(Zahl);
	myarr[i] := Zahl
	
 end;
 
 
 ergebnis := MaxRecArray(1, myarr);
  
 write(ergebnis)
 


end.
