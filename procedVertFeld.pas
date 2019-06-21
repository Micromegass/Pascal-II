


program ListeAB (input, output); 



	type
	tRefListe 	= ^tListe;
	tListe 		= record 
				  info : integer; 
				  next : tRefListe
				  end;

	procedure ListeAufbauen(var outRefAnfang : tRefListe); 
	
		var 
		Zeig : tRefListe;
		Zahl : integer; 
		
		
		begin 
			outRefAnfang := nil; 
			readln(Zahl);
			while (Zahl <> 0) do
			begin 
			new(Zeig); 
			Zeig^.info := Zahl; 
			Zeig^.next := outRefAnfang; 
			outRefAnfang := Zeig; 
			readln(Zahl)			
			end;
		
		
		end;
		
begin 


end.
