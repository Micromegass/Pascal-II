
program move (input, output); 


type 
tRefListe = ^tListe;
tListe = record 
           info : integer;
           next : tRefListe
         end; 
         

var 
RefAnfang : tRefListe; 
Zeiger : tRefListe;
Zahl : integer;
gef : boolean;
myVal : integer;

procedure moveToFront (
                inSuchwert : integer;
            var ioAnfang : tRefListe;
            var outGefunden : boolean);
{ bestimmt in einer linearen Liste das erste Element mit dem 
  Wert inSuchwert und positioniert es als erstes Listen-
  element }

  var 
  ZuletztGeprueftesElement,
  UmhaengeHilfe : tRefListe;
  gefunden : boolean;

begin
  gefunden := false;
  if ioAnfang <> nil then { Liste ist nicht leer }
    if ioAnfang^.info = inSuchwert then 
      { gefundenes Element ist schon das erste Element }
      gefunden := true
    else 
    begin
      ZuletztGeprueftesElement := ioAnfang;
      while (ZuletztGeprueftesElement^.next <> nil) and not gefunden do
        if ZuletztGeprueftesElement^.next^.info = inSuchwert then
        begin { Suchwert ist gefunden }
          gefunden := true;
          UmhaengeHilfe := ZuletztGeprueftesElement^.next;
ZuletztGeprueftesElement^.next := UmhaengeHilfe^.next;
UmhaengeHilfe^.next := ioAnfang;
ioAnfang := UmhaengeHilfe;
        end
        else 
          ZuletztGeprueftesElement := ZuletztGeprueftesElement^.next
    end; { else }
  outGefunden := gefunden
end; { moveToFront }


begin 

	{Liste aufbauen}
	RefAnfang := nil; 
	
	writeln('Zahl eingeben: ');
	readln(Zahl);
	while Zahl <> 0 do 
	begin
	  new(Zeiger);
	  Zeiger^.next := RefAnfang; 
	  Zeiger^.info := Zahl;
	  RefAnfang := Zeiger;
	  readln(Zahl)
     end;
     
     gef := false;
     myVal := 5;      
     moveToFront(myVal, RefAnfang, gef);
     
     
	 
	 Zeiger := RefAnfang; 
	 while (Zeiger^.next <> nil) do 
	 begin
	  write(Zeiger^.info);
	  Zeiger := Zeiger^.next
      end
      
      
      
end. 
