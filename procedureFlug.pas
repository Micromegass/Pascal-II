


program Flugzeit (input, output); 

	const 
	MINSEK = 59;
	STUNDE = 23;
	
	type 
	tStunde = 1..STUNDE;
	tMinSek = 1..MINSEK;
	tZeit = record
			h : tStunde; 
			m, 
			s : tMinSek
			end; 
	
	var 
	Zeit : tZeit; 
	Abflug, 
	Ankunft : tZeit;
	
	
	procedure Flight (var proceZeit : tZeit);
	
	var
	eingabe : integer; 
	
		begin 
		write('Flugzeit eingeben: ');
		
		repeat 
		write('Flugzeit eingeben Stunde: ');
		readln(eingabe); 
		Zeit.h := eingabe;
		until ((eingabe <= 23) and (eingabe > 0));
		
		repeat 
		write('Flugzeit eingeben Minute: ');
		readln(eingabe);
		Zeit.m := eingabe;
		until ((eingabe <= 59) and (eingabe > 0));
		
		repeat 
		write('Flugzeit eingeben Minute: ');
		readln(eingabe);
		Zeit.s := eingabe;
		until (( eingabe < 59) and (eingabe > 0));
		
		end; 
		
		
		
		
begin 

	Flight(Abflug);
	Flight(Ankunft);

	write(Zeit.m)

end.
