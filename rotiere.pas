
program rotate (inout, output) ; 



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

procedure RotiereListe(var inoutRefAnfang: tRefListe);


	var 
	Zeiger, Element : tRefListe;

	begin 
	Zeiger := inoutRefAnfang; 
	new(Element) ; 
	Element^.info := Zeiger^.info;
	inoutRefAnfang := Zeiger^.next;  
	dispose(Zeiger); 
	
	
	Zeiger := inoutRefAnfang; 
	
	while Zeiger^.next <> nil do 
		Zeiger := Zeiger^.next; 
		
	Zeiger^.next := Element; 
	Element^.next := nil
	
	end; 



procedure RotiereListe2(var inoutRefAnfang: tRefListe);


	var 
	Zeiger, Hilf: tRefListe;

	begin 
	Zeiger := inoutRefAnfang; 
	Hilf := inoutRefAnfang;
		
	while Zeiger^.next <> nil do 
		Zeiger := Zeiger^.next; 
	
	Zeiger^.next := inoutRefAnfang; 
	inoutRefAnfang := inoutRefAnfang^.next;  
	Hilf^.next := nil;
	
	
	end; 



begin

LiesListe(mylist); 

RotiereListe2(mylist);

gibListeAus(mylist)



end.




