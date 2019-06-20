
program ProzedurFeldmin (input, output) ; 

	const
	MAX = 6;

	type 
	tIndex = 1..MAX;
	tfeld = array[tIndex] of integer;
	
	var
	feldaussen : tfeld; 
	i : tIndex;
	iVonA,
	inBisA : tIndex;
	outPos : tIndex; 
	outMin : integer;
	
	

	procedure Feldmin (inFeld : tfeld;
						inVon, inBis : tIndex;
						var outPosition : tIndex; 
						var outMinimum : integer) ; 
						
						
	var 
	j : tIndex;
	min : integer;
	
	begin 
		min := inVon; 
		for j := 1 to MAX do 
		begin
			if inFeld[j] < inFeld[min] then 
			begin
			outPosition := j;
			outMinimum := inFeld[j]
			end
		end; 
		
		writeln
	end; 
	


begin

write('Feldzahlen eingeben: ');

for i := 1 to MAX do 
	begin
	write('Feld', i);
	readln(feldaussen[i])
	end;
	
	iVonA := 1; 
	inBisA := MAX;

(Feldmin(feldaussen, iVonA, inBisA, outPos, outMin)); 

writeln('Position ist: ', outPos);
writeln('Minimum ist: ', outMin);

end.
