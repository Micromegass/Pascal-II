


program FAK (input, output);



var 
eingabe : integer;
i : integer;
ergebnis : integer;



begin 

	writeln('Eingabe: ');
	readln(eingabe);
	
	if eingabe < 0 then 
		write('Fehler')
	else 
		if eingabe = 0 then 
			write(1)
		else 
		begin 
			ergebnis := 1;
			for i := 1 to eingabe do 
				ergebnis := i * ergebnis;
			write(ergebnis)
		end

end.


