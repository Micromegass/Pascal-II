
program PD (input, output) ; 


  type
  tRefListe = ^tListe;
  tListe = record
             info : integer;
             next : tRefListe
           end;


  var 
  mylist : tRefListe; 

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
  



	function PD (var inRefAnfang : tRefListe) : tRefListe; 
	
	var 
	Zeiger, Element : tRefListe;


	begin 
	Zeiger := inRefAnfang; 
	
	while Zeiger^.next <> nil do 
		begin
		Zeiger^.info := Zeiger^.info + Zeiger^.next^.info; 
		Zeiger := Zeiger^.next
		end;
	
	new(Element) ; 
	Element^.info := 1 ; 
	Element^.next := inRefAnfang; 
	inRefAnfang := Element; 
	
	PD := inRefAnfang
	
	end; 



function NaechstePascalscheReihe (inRefAnfang : tRefListe) : tRefListe;
{ Berechnet aus einer Liste mit dem Zeiger auf "inRefAnfang"   die naechste Pascalsche Reihe }
  var
  Zeiger,
  RefNeu : tRefListe;

  procedure Anhaengen (inZahl : integer; var ioRefZeiger : tRefListe);
  { Erstellt einen neuen Zeiger mit dem Element "inZahl" und haengt es     an die Liste "ioRefZeiger" an }
    var
    Zeig : tRefListe;

    begin
      new (Zeig);
      Zeig^.info := inZahl;
      Zeig^.next := ioRefZeiger;
      ioRefZeiger := Zeig
    end;

	begin
	  { Zeiger Initialisierung }
	  Zeiger := inRefAnfang;
	  RefNeu := nil;   { Erstes und letztes Element sind immer 1 }
	  Anhaengen (1, RefNeu);
	  { Alle Werte zwischen Anfang und Ende berechnen }
	  while Zeiger^.next <> nil do
	  begin
		Anhaengen (Zeiger^.info + Zeiger^.next^.info, RefNeu);
		Zeiger := Zeiger^.next
	  end;
	  { Ende erreicht! Jetzt nur noch 1 anhaengen }
	  Anhaengen (1, RefNeu);
	  NaechstePascalscheReihe := RefNeu
	end;

begin

LiesListe(mylist); 
mylist := NaechstePascalscheReihe(mylist);
gibListeAus(mylist)



end.
