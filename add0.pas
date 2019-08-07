
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
  
  
  procedure Tausche (var inRefAnfang : tRefListe ) ; 
  
  var 
  hilf, lauf,
  Zeiger : tRefListe; 
  
  begin 
  Hilf := inRefAnfang; 
  Zeiger := inRefAnfang^.next;
  lauf := inRefAnfang; 
  
  while lauf^.next <> nil do 
   lauf := lauf^.next; 
   
   
  while Zeiger^.info <> 0 do 
    begin
    if Zeiger^.info = 0 then 
    begin
    hilf^.next := Zeiger^.next; 
    Zeiger^.next := nil; 
    lauf^.next := Zeiger; 
    end
    else 
    begin
    Zeiger := Zeiger^.next; 
    Hilf := hilf^.next
    end
   end 
    
    end;
    
    
    
    
    
    procedure Tausche2 (inRefAnfang: tRefListe) ;
var
vor,
ende,
nullElement : tRefListe;
begin
{Vorgänger von gesuchtem El-ement finden}
vor := inRefAnfang;
while vor^.next^.info <> 0 do
vor := vor^.next;



nullElement := vor^.next;
vor^.next := nullElement^.next;
{Letztes ETement finden}
ende := vor;
while ende^.next <> nil do
ende := ende^.next;
{gemerktes Efement hnten anhängen}
ende^.next := nullElement;
nullElement^.next := nil
end; {Tausche}
   
  
  	

  


begin 
Liste1 := nil; 
LiesListe(Liste1); 
Tausche(Liste1);
gibListeAus(Liste1)

end.
