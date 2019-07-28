


program x (input, output) ; 


	type
	tRefListe = ^tListe;
	tListe    = record
	            wert:integer;
			    next,prev:tRefListe
				end;
				
	
	
	var 
	myRefAnfang : tRefListe;

	procedure entfernen (inRefAnfang : tRefListe; inZahl :integer) ; 
	
	var 
	gefunden : boolean; 
	Zeiger : tRefListe;
	
		begin
 Zeiger:=inRefAnfang^.next;
 gefunden:=false;
 while (Zeiger<>nil) and not gefunden do
 if Zeiger^.Wert=inZahl then
 begin
 Zeiger^.prev^.next:=Zeiger^.next;
 if Zeiger^.next<>nil then
 {Es wird nicht das letzte Element gelöscht.}
 Zeiger^.next^.prev:=Zeiger^.prev;
 gefunden:=true;
 dispose(Zeiger)
 end
 else
 Zeiger:=Zeiger^.next
 end;





function listeAufbauen (outRefAnfang : tRefListe) : tRefListe;

	var 
	Zeiger : tRefListe;
	Zahl : integer;

	begin
	 outRefAnfang := nil; 
	 write('Zahl eingeben: ');
	 readln(Zahl);
	 while Zahl <> 99 do 
	 begin
		new(Zeiger); 
		Zeiger^.wert := Zahl; 
		Zeiger^.next := outRefAnfang; 
		outRefAnfang := Zeiger; 
		write('Zahl eingeben: ');
		readln(Zahl)
	 end;
	 listeAufbauen := outRefAnfang
	end; 
	
	
	
	
procedure listeDrucken (inRefAnfang: tRefListe);

	var 
	Zeiger : tRefListe; 
	
	begin
	Zeiger := inRefAnfang; 
	while Zeiger <> nil do 
	 begin
	  write(Zeiger^.wert, '-->');
	  Zeiger := Zeiger^.next
	 end
	end;


begin 

myRefAnfang := nil;

myRefAnfang := listeAufbauen(myRefAnfang); 
entfernen(myRefAnfang, 3); 
listeDrucken(myRefAnfang)
	


end.
