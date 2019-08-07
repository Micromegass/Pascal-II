
program Exchng (input, output);
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
  
  
	procedure Tausche(var ioRefListe: tRefListe);
	{s. Aufgabenstellung}
	var such,
	vor,
	nach : tRefListe;
	begin
	vor := NIL;
	such := ioRefListe;
	while such^.info <> 0 do
	begin
	vor := such;
	such := such^.next
	end;
	nach := such^.next;
	{Jetzt sind alle Zeiger positioniert. such zeigt auf das
	Element mit dem Wert 0, vor auf dessen Vorgaenger oder auf nil,
	nach auf den Nachfolger von such^.next}
	if vor=NIL then
	{D.h. es muss am Anfang getauscht werden }
	ioRefListe := such^.next
	else
	vor^.next := such^.next;

	{such^.next ist ungleich nil, da nach Voraussetzung 0 in der
	Liste nicht als letztes Element vorkommt }
	such^.next := nach
	end;

begin 
Liste1 := nil; 
LiesListe(Liste1); 
Tausche(Liste1);
gibListeAus(Liste1);


end.
