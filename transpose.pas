


program transp (output); 

type 
tRefListe = ^tListe; 
tListe 	  = record 
			info : integer; 
			next : tRefListe
			end;


	function ListenElemTransponieren (inRefAnfang : tRefListe;
									  inZahl : integer) : tRefListe; 
									  
									  
									  
	var 
	Zeiger, 
	Ergebniszeiger : tRefListe; 
	gefunden : boolean; 
	Hilf : integer; 
	
	
	begin 
		if inRefAnfang = nil then 
		{Liste leer}
		Ergebniszeiger := nil 
		else 
		  if inRefAnfang^.info = inZahl then 
		  Ergebniszeiger := inRefAnfang 
		  else 
		  begin 
		  Zeiger := inRefAnfang; 
		  gefunden := false;
		  while (Zeiger^.next <> nil) and (not gefunden) do 
		   if Zeiger^.next^.info = inZahl then 
		   begin 
		   Hilf := Zeiger^.next^.info; 
		   Zeiger^.next^.info := Zeiger^.info; 
		   Zeiger^.info := Hilf; 
		   ErgebnisZeiger := Zeiger; 
		   gefunden := true
		 end 
		 else 
		 Zeiger := Zeiger^.next; 
		 
		 if not gefunden then 
		 Ergebniszeiger := nil; 
	end; 
	
		ListenElemTransponieren := ErgebnisZeiger;

end;

begin 
end. 
