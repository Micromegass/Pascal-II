





program delete (input, output) ; 

  type
  tRefListe = ^tListe;
  tListe = record
             info : integer;
             next : tRefListe
           end;

  var 
  Liste1, 
  Liste2,
  Gesamtliste : tRefListe;


 

  procedure LiesListe(var outListe : tRefListe);
  { Liest eine (evtl. leere) Liste ein und gibt deren Anfangszeiger outListe zurueck. }

    var
    Anzahl : integer;
    i : integer;
    neueZahl : integer;
    Listenanfang,
    Listenende : tRefListe;


  begin
    Listenanfang := nil;
    repeat
      write ('Wie viele Zahlen wollen Sie eingeben? ');
      readln (Anzahl);
    until Anzahl >= 0;
 
    write ('Bitte geben Sie ', Anzahl, ' Zahlen ein: ');

    { Liste aufbauen }
    for i := 1 to Anzahl do
    begin
      read (neueZahl);
      if Listenanfang = nil then
      begin
        new (Listenanfang);
        Listenanfang^.next := nil;
        Listenanfang^.info := neueZahl;
        Listenende := Listenanfang;
      end
      else
      begin
        new (Listenende^.next);
        Listenende := Listenende^.next;
        Listenende^.next := nil;
        Listenende^.info := neueZahl
      end  { if Liste = nil }
    end; { for }
  outListe := Listenanfang;
  writeln
  end; { LiesListe }


  procedure gibListeAus (inListe : tRefListe);
  { gibt die Liste mit Anfangszeiger inListe aus }
    var
    ListenElement : tRefListe;
  begin
    ListenElement := inListe;
    while ListenElement <> nil do
    begin
      write(ListenElement^.info, ' ');
      ListenElement := ListenElement^.next;
    end;
    writeln;
  end; { gibListeAus }
  
  
  
	procedure del (var inoutRefListe: tRefListe) ; 
	
	var
	Zeiger, 
	Hilf, delZeiger : tRefListe; 
	
	begin 
		if inoutRefListe^.info < 0 then 
		begin
		Zeiger := inoutRefListe; 
		inoutRefListe := Zeiger^.next; 
		dispose(Zeiger) 
		end
		else 
		begin 
		Zeiger := inoutRefListe^.next; 
		Hilf := inoutRefListe;
		
		while Zeiger <> nil do 
		  if Zeiger^.info < 0 then 
		  begin 
		  delZeiger := Zeiger;
		  Hilf^.next := Zeiger^.next ; 
		  Zeiger := Zeiger^.next;

		  dispose(delZeiger)
		  end
		  else 
		  Zeiger := Zeiger^.next;
		  Hilf := Hilf^.next
		  end
		   
		 
	end;

  


begin 


Liste1 := nil; 

LiesListe(Liste1); 
gibListeAus(Liste1); 
del(Liste1); 
gibListeAus(Liste1)





end.
