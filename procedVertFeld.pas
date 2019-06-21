


program ListeAB (input, output); 



	type
	tRefListe 	= ^tListe;
	tListe 		= record 
				  info : integer; 
				  next : tRefListe
				  end;
				  
	var 
	myList : tRefListe;

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
	
	
	procedure ListeDrucken (inRefAnfang : tRefListe); 
	
	var 
	Hilfszeiger : tRefListe;
	
	begin  
	
	    Hilfszeiger := inRefAnfang;
		while (Hilfszeiger <> nil) do 
		begin
		  write(Hilfszeiger^.info); 
		  Hilfszeiger := Hilfszeiger^.next; 
	    end; 
		writeln;
	end;
	
		
begin 

ListeAufbauen(myList);
ListeDrucken(myList);


end.
