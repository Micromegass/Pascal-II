program TesteAnhaengen (input, output);
{ testet die Prozedur anhaengen }

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
  
  
  
  function gespiegelteKopieVon(inRefOriginal: tRefListe):tRefListe;


	var 
	Zeiger, 
	neuerAnfang, 
	Element, laufZeiger : tRefListe; 
	
	begin 
	new(Zeiger) ;
	neuerAnfang := Zeiger; 
	Zeiger^.info := inRefOriginal^.info; 
	laufZeiger := inRefOriginal^.next; 
	
	while laufZeiger <> nil do 
	begin 
	  new(Element) ; 
	  Element^.info := Laufzeiger^.info; 
	  Element^.next := neuerAnfang; 
	  neuerAnfang := Element; 
	  laufZeiger := laufZeiger^.next
	end; 
	gespiegelteKopieVon := neuerAnfang; 
	
	
	
	end;

  


begin 
Liste1 := nil; 
LiesListe(Liste1); 
gibListeAus(Liste1);
Liste2 := gespiegelteKopieVon(Liste1); 
gibListeAus(Liste2);


end.
