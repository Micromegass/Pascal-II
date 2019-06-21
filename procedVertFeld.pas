


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
	
	
	
	function Suchen (inRefAnfang : tRefListe; 
					 inZahl : integer) : tRefListe;
	
	
	var 
	Zeiger : tRefListe; 
	
	begin 
	 Zeiger := inRefAnfang; 
	 if Zeiger <> nil then 
		begin 
		while (Zeiger^.next <> nil ) and (Zeiger^.info <> inZahl) do 
		  Zeiger := Zeiger^.next; 
		 if Zeiger^.info <> inZahl then 
		 Zeiger := nil
		 end; 
		 Suchen := Zeiger; 
	end; 
	
		
	
	
		 
begin 

ListeAufbauen(myList);
ListeDrucken(myList);
Suchen(myList, 5);

end.
