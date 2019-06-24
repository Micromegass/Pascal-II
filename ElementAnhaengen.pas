


program EA (output); 


	type 
	tRefListe = ^tListe; 
	tListe 	  = record
				info : integer; 
				next : tRefListe
				end; 
				
				
	var
	zeig : tRefListe;
    eingabe : integer;
    myinRefAnfang : tRefListe;
    myRefEnde : tRefListe;


	procedure ElementAnhengen ( inZahl : integer;
								var inoutRefAnfang : tRefListe;
								var inoutRefEnde : tRefListe);
								
		
		var 
		Zeiger : tRefListe; 
		
		
		begin 
		new (Zeiger);
		Zeiger^.info := inZahl;
		Zeiger^.next := nil;
		if inoutRefEnde = nil then 
		begin 
		inoutRefAnfang := Zeiger; 
		inoutRefEnde := Zeiger;
		end
		else 
		begin
		inoutRefEnde^.next := Zeiger;
		inoutRefEnde := Zeiger; 
		end
		
		end; 						
	
begin 
myinRefAnfang := nil;
myRefEnde := nil;
readln(eingabe);
 while eingabe <> 0 do
  begin
  ElementAnhengen(eingabe, myinRefAnfang, myRefEnde);
  readln(eingabe)
  end;
  
  
  zeig := myinRefAnfang; 
  
  while zeig <> nil do 
  begin
   writeln(zeig^.info);
   zeig := zeig^.next
  end

end.		
