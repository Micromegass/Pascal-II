


program SeminarVerbund (input, output);


	const
	MAXTEILNEHMER = 12; 
	TAGE = 31;
	MONATE = 12;
	MINJAHR = 1900;
	MAXJAHR = 2019;

	type
	tTag = 1..TAGE;
	tMonat = 1..MONATE;
	tJahr = MINJAHR..MAXJAHR;
	tNatZahl = 0..maxint;
	tStatus = (aktiv, passiv);
	tIndex = 1..MAXTEILNEHMER;

	tStudenten = record
				name : string; 
				
				geburtsdatum : record
					tag : tTag;
					monat : tMonat;
					jahr : tJahr
					end;
					
				matrikelnummer : tNatZahl;
				status : tStatus
				end;

	tStudentenarray = array[tIndex] of tStudenten;



	var 
	TeilnehmerFeld : tStudentenarray; 
	AnzStud : tNatZahl; 
	i : tIndex; 
	Status : char; 
	

begin 
	
	write('Wie viele Studenten?: ');
	readln(AnzStud); 
	
	if AnzStud > MAXTEILNEHMER then 
	begin
		writeln('maximale Anzahl ist', MAXTEILNEHMER);
		AnzStud := MAXTEILNEHMER
	end; 
	
	writeln('Name, Matrikelnummer, Aktivität eingeben:  ');
	
	for i := 1 to AnzStud do 
	begin 
		write('Name: ');
		readln(TeilnehmerFeld[i].name);
		
		write('Matrikelnummer: ');
		readln(TeilnehmerFeld[i].matrikelnummer);
		
		write('Status: ');
		readln(Status);
		if Status = 'a' then
			TeilnehmerFeld[i].status := aktiv
		else 
			TeilnehmerFeld[i].status := passiv
	end; 
	
	
	{Ausgabe}

	for i := 1 to AnzStud do 
	begin 
		if TeilnehmerFeld[i].Status = aktiv then 
		writeln(TeilnehmerFeld[i].name, 'mit Matrikelnummer ', TeilnehmerFeld[i].matrikelnummer, 'nahm erfolgreich teil' ); 
	end; 
	
	
		
		



end.
