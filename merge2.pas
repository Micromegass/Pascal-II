

program m2 (inout, output) ; 


	const MAX = 5;
	MAXDOPPELT = 2*MAX;

	type
	tIndex = 1..MAX;
	tIndexDoppelt = 1..MAXDOPPELT;
	tIntFeld = array[tIndex] of integer;
	tIntFeldDoppelt = array[tIndexDoppelt] of integer;

	var 
	firstField, secondField : tIntFeld; 
	thirdField : tIntFeldDoppelt;
	Zahl : integer; 
	i : tIndex;
	j : tIndexDoppelt;

	
	
	procedure merge2(inFeld1, inFeld2: tIntFeld;
	var outFeld: tIntFeldDoppelt);
	{Fügt die Felder inFeld1 und inFeld2 zu outFeld zusammen, indem
	immer abwechselnd ein Element aus inFeld1 und eines aus inFeld2
	nach outFeld übernommen wird.}
	var i:integer;
	begin
	for i:=1 to MAX do
	begin
	outFeld[2*i-1] := inFeld1[i];
	outFeld[2*i] := inFeld2[i];
	end;
	end;
		
	
	
begin 

for i :=1 to MAX do 
	begin 
	write('Zahl ', i, 'Feld'); 
	readln(Zahl); 
	firstField[i] := Zahl; 
	end; 

write('Now second field');

	for i :=1 to MAX do 
	begin 
	write('Zahl ', i, 'Feld'); 
	readln(Zahl); 
	secondField[i] := Zahl
	end;

merger(firstField, secondField, thirdField); 

	for j:=1 to MAXDOPPELT do 
		writeln(thirdField[j]);

end.


