
program Stringtest (output);


const 
MAXLAENGE = 100;

var
Zeichenkette : string[MAXLAENGE];



begin 

	Zeichenkette := 'Dies ist ein kurzer Satz';
	writeln(Zeichenkette);
	
	writeln('Das 3. Zeichen ist: ', Zeichenkette[3]);
	writeln('Länge: ', length(Zeichenkette));
	writeln('last: ', Zeichenkette[length(Zeichenkette)])

end.
