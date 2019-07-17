
program RekDel (input, output) ; 


type 
	tRefListe = ^tListe; 
	tListe 	  = record
				info : integer; 
				next : tRefListe
				end; 
				



procedure del (inZahl : integer; var inoutRefAnfang: tRefListe; var outGefunden: boolean); 



	var 
	Zeiger : tRefListe; 
	gefunden : boolean; 

	begin 
		
	
		if inoutRefAnfang = nil then 
		gefunden := false
		
		else 
		 if inoutRefAnfang^.info = inZahl then 
		 begin 
		 Zeiger := inoutRefAnfang;
		 inoutRefAnfang := inoutRefAnfang^.next;
		 dispose(Zeiger);
		 gefunden := true
		 end 
		 else 
		 del(inZahl, inoutRefAnfang^.next, gefunden);
		 
		 outGefunden := gefunden
		
	end; 








begin


end.
