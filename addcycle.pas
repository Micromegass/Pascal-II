
program zy (inout, output) ; 




type
tRefListe = ^tListe;
tListe = record
		 info : integer;
		 next : tRefListe
	   end;



var 
mylist : tRefListe;

	procedure einfuegen ( inInfo: integer;	inEinfuegenAmAnfang: Boolean;
						 var ioRefAnfang: tRefListe);

	var 
	Zeiger, Element: tRefListe;

	begin
	Zeiger := ioRefAnfang; 
	
	new(Element); 
	Element^.info := inInfo; 
	
	while Zeiger^.next <> ioRefAnfang do 
		Zeiger := Zeiger^.next; 
		
		
	if not inEinfuegenAmAnfang then 
	  begin 
		Element^.next := ioRefAnfang;
		Zeiger^.next := Element; 
		ioRefAnfang := Element
	  end
		else 
		begin 
		Zeiger^.next := Element; 
		Element^.next := ioRefAnfang
		end  
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


begin 

LiesListe(mylist); 
einfuegen(8, true, mylist); 
gibListeAus(mylist)



end.
