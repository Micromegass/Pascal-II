


program tasche (input, output) ; 

type 
tRefListe = ^tListe; 
tListe 	  = record
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
  
	procedure change(var ioRefListe: tRefListe); 
	
	var 
	hilf, vor, ende: tRefListe; 

	
	begin
	vor := ioRefListe;
	{Vorgänger von gesuchtem Element finden}
	while vor^.next^.info <> 0 do
	vor := vor^.next;
	{zu verschiebendes Element merken und abhängen}
	hilf := vor^.next;
	vor^.next := hilf^.next;
	{letztes Element finden}
	ende := vor;
	while ende^.next <> nil do
	ende := ende^.next;
	{gemerktes Element hinten anhängen}
	ende^.next := hilf;
	hilf^.next := nil
	
	end;



	procedure del3 (inRefAnfang : tRefListe) ; 
	
	
	var 
	hilf, Zeiger, del : tRefListe; 
	
	begin 
	Hilf := inRefAnfang^.next; 
	Zeiger := inRefAnfang^.next^.next; 
	
	while Zeiger^.next^.next^.next <> nil do 
	  begin
	  Hilf^.next := Zeiger^.next; 
	  del := zeiger; 
	  Zeiger := Zeiger^.next^.next^.next; 
	  Hilf := Hilf^.next^.next; 
	  dispose(del)
	  end
		
		
	
	end ; 



begin 

mylist := nil;
LiesListe(mylist);
del3(mylist);
gibListeAus(mylist)

end.
