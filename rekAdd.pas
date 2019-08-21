
program x (input, output) ; 


type
tRefListe = ^tListe;
tListe =  record
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

 
	procedure tausche(var ioRefAnfang : tRefListe);
	  var
	  Ende, Vor, Zeiger : tRefListe; 
	  
	  begin 
	  if ioRefAnfang^.info <> 0 then
		{ Nur wenn 0 nicht das erste Element ist, muss ueberhaupt
		etwas gemacht werden }
	  begin
		
	  Ende := ioRefAnfang; 
	  Zeiger := ioRefAnfang; 
	  Vor := ioRefAnfang; 
	  
	  while Ende^.next <> nil do 
		Ende := Ende^.next; 
	
	
	  while Zeiger^.next^.info <> 0 do 
		Zeiger := Zeiger^.next; 
	  Vor:=Zeiger; 
	

		Ende^.next := ioRefAnfang; 
		ioRefAnfang := Vor^.next; 
		Vor := nil;

		end ;
		
		end


begin 

LiesListe(mylist); 
Tausche2(mylist);
gibListeAus(mylist)





end.
