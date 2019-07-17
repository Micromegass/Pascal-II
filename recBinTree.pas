

program nbrLookup (input, output) ; 



	type 
	tRefListe = ^tListe; 
	tListe = record
				info : integer; 
				next : tRefListe
				end; 


	function lookup (inZahl : integer; inRefAnfang : tRefListe) : tRefListe;
	
	var 
	Zeiger : tRefListe; 
	
	
	begin 
	
		Zeiger := inRefanfang; 
		if inRefAnfang = nil then 
			if Zeiger^.info <> inZahl then 
			lookup(inZahl, inRefAnfang^.next);
		lookup := Zeiger
	
	end;



begin 


end.
