


program BS (input, output);


	const 
	FELDGROESSE = 8;

	var
	unten, oben, Mitte : integer;
	Feld : array[1..FELDGROESSE] of integer;
	Suchwert : integer;
	gefunden : boolean;
	i : integer;
	eingabe : integer;
	
	

begin


	for i := 1 to FELDGROESSE do
	begin
		writeln('Eingabe fuer Wert', i);
		readln(eingabe);
		Feld[i] := eingabe;
	end;
	
	unten := 1;
	oben := FELDGROESSE;
	writeln('Suchwert eingeben: ');
	readln(Suchwert);
	gefunden := false;
		while (unten < oben) and (not gefunden) do 
		begin
			Mitte := (oben + unten) div 2;
			if Suchwert = Feld[Mitte] then 
			begin
			gefunden := true;
			writeln('Suchwert ist : ', Suchwert, 'an der Position: ', i)
			end
		else  
			if Suchwert < Feld[Mitte] then
				oben := Mitte - 1 
		else  
				unten := Mitte +1
	end; 

end.


[1,2,3,4,5]
