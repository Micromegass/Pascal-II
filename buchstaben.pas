

program Kleinbuchstaben (input, output); 


	const
	MAX = maxint;

	type
	tbuchstaben = 'a'..'z';
	tIndex = 0..MAX;
	tsatz = array[tBuchstaben] of tIndex; 

	var 
	Anzahl : tsatz;
	eingabe : char;
	vokalzahl : integer;
	gesamtzahl : integer;

begin 
	
	for eingabe := 'a' to 'z' do 
		Anzahl[eingabe] := 0;
	gesamtzahl := 0;
	
	read(eingabe); 
	while eingabe <> '.' do 
	begin 
		if (eingabe >= 'a') and (eingabe <= 'z') then 
		begin 
		Anzahl[eingabe] := Anzahl[eingabe] + 1;
		Gesamtzahl := Gesamtzahl + 1
		end; 
		read(eingabe)
	end; 
	
	writeln; 
	
	vokalzahl := Anzahl['a'] + Anzahl['e'] + Anzahl['i'] + Anzahl['o'] + Anzahl['u']; 
	writeln('Anzahl Vokale: ', vokalzahl); 
	write('Anzahl Konsonanten: ', Gesamtzahl - Vokalzahl)
	


end.
