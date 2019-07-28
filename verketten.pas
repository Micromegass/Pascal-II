


program verk (ninput, output); 


	type 
	tRefListe = ^tListe; 
	tListe 	  = record
				info : integer; 
				next : tRefListe
				end; 
	


	var 
	mylist : tRefListe;
		
	
	procedure ListeUmdrehen(var ioListe:tRefListe); 
	{Die Prozedur dreht die Elemente der Liste ioListe.}   
	var   
	Zeiger : tRefListe;   
	ZeigerAlt : tRefListe; 
	
	begin   
	ZeigerAlt:=nil;   
	while ioListe <> nil do   
	begin     
	Zeiger:=ioListe;     
	ioListe:=ioListe^.next;     
	Zeiger^.next:=ZeigerAlt;     
	ZeigerAlt:=Zeiger   
	end;   
	ioListe:=ZeigerAlt 
	end;
	
	
	procedure umdrehen (var ioRefAnfang : tRefListe); 
	
	var 
	Zeiger0, 
	Zeiger1, 
	Zeiger2 : tRefListe; 
	
	
	begin 
	
	Zeiger0 := nil; 
	Zeiger2 := ioRefAnfang^.next; 
		
	while ioRefAnfang <> nil do 
	begin
	  ioRefAnfang^.next := Zeiger0; 
	  Zeiger0 := ioRefAnfang ; 
	  Zeiger2 := Zeiger2^.next
	end;
	
	ioRefAnfang := Zeiger0; 
	
	
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
		Zeiger^.info := Zahl; 
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
	  write(Zeiger^.info, '-->');
	  Zeiger := Zeiger^.next
	 end
	end;
	
	
	
begin 

myList := nil; 
myList := listeAufbauen(myList);
umdrehen(myList); 
ListeDrucken(myList);


end.
