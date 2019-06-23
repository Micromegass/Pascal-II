


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
	
		
	
	
	
	
	procedure SortedListAdd (var ioRefAnfang : tRefListe; 
							 inZahl : integer); 
							 
	
	
	
	var 
	Zeiger, 
	RefNeu 	: tRefListe; 
	gefunden : boolean; 
	
	
	
	begin 
		new(RefNeu); 
		RefNeu^.info := inZahl; 
		
		if ioRefAnfang = nil then 
		{leere Liste}
		begin 
		 RefNeu^.next := ioRefAnfang; 
		 ioRefAnfang := RefNeu		
		end
		
		else 
		 if ioRefAnfang^.info > inZahl then 
		 {Einfügen am Anfang}
		 begin 
		 RefNeu^.next := ioRefAnfang; 
		 ioRefAnfang := RefNeu
		 end
		 
		 else 
		 begin 
		 gefunden := false; 
		 Zeiger := ioRefAnfang; 
		 
		 while (Zeiger^.next <> nil) and (not gefunden) do 
		   if Zeiger^.next^.info > inZahl then 
		   gefunden := true 
		   else 
		   Zeiger := Zeiger^.next; 
		  
		  if gefunden then 
		   begin 
		   RefNeu^.next := Zeiger^.next;
		   Zeiger^.next := RefNeu
		   end 
		   
		   else 
		   begin
		   Zeiger^.next := RefNeu; 
		   RefNeu^.next := nil
		end 
	  end
	end;
	
	
		 
begin 

ListeAufbauen(myList);
ListeDrucken(myList);
Suchen(myList, 5);

end.
