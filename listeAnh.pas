


program la (input,output) ; 
	
	type
	tRefListe = ^tListe;
	tliste = record
			info : integer;
			next : tRefListe
			end;
	
	
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
  
	
	
	
	
	var 
	firstlist, secondlist, thirdlist : tRefListe;  
	
		
	function ListenMerge (
	inliste1,
	inListe2 : tRefListe) : tRefListe;
	{ fasst die Elemente der nicht-leeren und gleich langen Listen
	inlistel und inListe mit dem Reissverschlussverfahren durch
	Aenderung der Verkettung zu einer einzigen Liste zusammen
	und gibt einen Zeiger auf den Anfang der Ergebnisliste
	zurueck }
	
	
	var 
	Zeiger1, Zeiger2, Hilf1, Hilf2 : tRefListe; 
	
	
	begin 
	
	Zeiger1 := inliste1 ; 
	Zeiger2 := inListe2; 
	Hilf1 := inliste1^.next; 
	Hilf2 := inListe2^.next; 
	
	
	while Hilf1^.next <> nil do 
	begin 
	Zeiger1^.next := Zeiger2; 
	Zeiger2^.next := Hilf1; 
	Zeiger1 := Hilf1 ; 
	Hilf1 := Hilf1^.next; 
	Zeiger2 := Hilf2;
	Hilf2 := Hilf2^.next
	end; 
	
	Zeiger1^.next := Zeiger2; 
	Zeiger2^.next := Hilf1; 
	Hilf1^.next := Hilf2; 
	Hilf2 := nil; 
	
	ListenMerge := inliste1

	
	end;
	
	
begin 

LiesListe(firstlist); 
LiesListe(secondlist); 
thirdlist := ListenMerge(firstlist, secondlist); 

gibListeAus(thirdlist)


end.	
