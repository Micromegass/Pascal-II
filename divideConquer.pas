


program dq (input, output) ;


	const 
	UNTEN = 0; 
	OBEN  = 10; 

	type 
	tIndex = UNTEN..OBEN; 
	tFeld  = array[tIndex] of integer ; 
	
	
	var 
	myarr : tFeld; 
	i : tIndex;
	Zahl : integer;
	maxi : integer;

	procedure rekMax(inVon, inBis : tIndex; var inFeld : tFeld; var outMax:integer) ; 
	
	var 
	mitte : tIndex; 
	max1, max2 : integer;
	

	begin 
	

	if inVon = inBis then 
	outMax := inFeld[inVon]
	else 
	begin
	mitte := (inVon + inBis) div 2 ; 
	rekMax(inVon, mitte, inFeld, max1); 
	rekMax(mitte + 1, inBis, inFeld, max2); 
	
	if max1 > max2 then 
	outMax := max1
	else 
	outMax := max2
	end
	end; 





begin 

for i := 1 to OBEN do 
begin
 write('Zahl: '); 
 readln(Zahl); 
 myarr[i] := Zahl
end ;

(rekMax(UNTEN, OBEN, myarr, maxi));
write(maxi);

end. 
