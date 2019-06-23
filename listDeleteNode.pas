
program del (output);


	type 
	tRefListe = ^tListe;
	tListe  = record 
			  info : integer; 
			  next : tRefListe
			  end; 
	

	procedure ListenElemEntfernen (var ioRefAnfang : tRefListe; 
					  inZahl: integer;
					  var outGefunden : boolean); 
					  
	{entfernt Liste mit Wert inZahl. Bei Erfolg gefunden auf true, 
	sonst false}
					  
		
		var 
		Zeiger : tRefListe; 
		gefunden : boolean; 
		
	
	procedure Abhaengen (var ioZeig : tRefListe); 
	{haengt Element ab das reinkommt}
		var 
		HilfsZeig : tRefListe; 
	
		begin 
		Hilfszeig := ioZeig; 
		ioZeig := ioZeig^.next; 
		dispose(Hilfszeig)
		end; {Abhaengen}
		
	
	
	begin 
	
		if ioRefAnfang = nil then 
		gefunden := false
		else 
		  if ioRefAnfang^.info = inZahl then 
		  begin 
		  Abhaengen(ioRefAnfang); 
		  gefunden := true 
		  end 
		 
		else 
		begin 
			
			Zeiger := ioRefAnfang;
			gefunden := false; 
			
			while (Zeiger^.next = nil) and (not gefunden) do 
			  if Zeiger^.next^.info = inZahl then 
			  begin 
			  Abhaengen (Zeiger^.next); 
			  gefunden := true
			  end 
			  else
			  Zeiger = Zeiger^.next 
			end; 
		outGefunden := gefunden
end ;
	
	
		

begin





end.
