

program SA (input, output) ; 


	const
	FELDGROESSE=5;


	type
	tIndex=1..FELDGROESSE;
	tFeld=array[tIndex] of real;


	var 
	myarr : tFeld; 
	zahl, i : integer;
	x : real; 

	function stab (arr : tFeld) : real; 

		var 
		i : integer; 
		stand, mittelwert : real; 


	begin
	
	mittelwert := 0; 
	for i := 1 to FELDGROESSE do 
		mittelwert := arr[i] + mittelwert; 

	mittelwert := mittelwert / FELDGROESSE;

	stand := 0;
	for i := 1 to FELDGROESSE do 
		stand := stand + ((arr[i] - mittelwert) * (arr[i] - mittelwert)) ;

	stand := sqrt(stand / FELDGROESSE);
	stab := stand
	end;


begin 


	for i:=1 to FELDGROESSE do 
	begin
		write('Zahl: '); 
		readln(Zahl); 
		myarr[i] := Zahl
	end;
		
		
	x := stab(myarr); 
	write('Ergebnis is : ', x)



end .
