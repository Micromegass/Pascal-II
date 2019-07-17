


program RekMax (input, output) ;



	const
	FELDGROESSE = 10; 

	type 
	tIndex = 1..FELDGROESSE;
	tFeld = array[tIndex] of integer; 
	
	
	var 
	Zahl,
	i : integer;
	myarray : tFeld;

	function rekmaximum (inMaxPos : tIndex; var inFeld : tFeld) : tIndex; 
		
	{...}
	
	var 
	rekMax : integer;
	
	
	begin 
	
		if inMaxPos = FELDGROESSE then 
		   rekFeldMax := inMaxPos
		else 
			rekMax := rekmaximum(inMaxPos + 1, inFeld)
		
		if 
		
		
		
	end; 
	
	
	
	begin 
	
	for i := 1 to FELDGROESSE do 
	begin
	writeln('Zahl: ');
	readln(Zahl);
	myarray[i] := Zahl;
	end;
	
	writeln(rekmaximum(1,myarray));
	
	
	
	end.
	
