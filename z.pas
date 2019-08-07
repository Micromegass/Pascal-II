
program z (input, output) ; 



	type 
	tRefBinBaum = ^tBinBaum; 
	tBinBaum = record
				info : integer; 
				links : tRefBinBaum;
				rechts : tRefBinBaum
				end; 




	var 
	mytree : tRefBinBaum;
	x : boolean;

  procedure BBKnotenEinfuegen (
                  inZahl : integer;
              var ioWurzel : tRefBinBaum);
  { fuegt in den Suchbaum, auf dessen Wurzel ioWurzel
    zeigt, ein Blatt mit Wert inZahl an. }

  var
  Zeiger : tRefBinBaum;

  begin
    if ioWurzel = nil then

    begin
      new (Zeiger);
      Zeiger^.Info := inZahl;
      Zeiger^.links := nil;
      Zeiger^.rechts := nil;
      ioWurzel := Zeiger
    end { if }
    else { ioWurzel <> nil }
      if inZahl < ioWurzel^.info then
        BBKnotenEinfuegen (inZahl, ioWurzel^.links)
      else
        BBKnotenEinfuegen (inZahl, ioWurzel^.rechts);
  end; { BBKnotenEinfuegen }

  procedure BBAufbauen (var outWurzel : tRefBinBaum);
  { Liest eine Folge von Integer-Zahlen ein (0 beendet die
    Eingabe, gehoert aber nicht zur Folge) und speichert
    die Folge in einem binren Suchbaum. }

    var 
    Zahl : integer;

  begin
    outWurzel := nil; { mit leerem Baum initialisieren }
    read (Zahl);
    while Zahl <> 0 do
    begin
      BBKnotenEinfuegen (Zahl, outWurzel);
      read (Zahl)
    end
  end; { BBAufbauen }

  procedure BaumAusgeben(inWurzel : tRefBinBaum);
  { Durchlaeuft den Binaerbaum mit Wurzel inWurzel und gibt
    die Knoteninhalte und Knotentiefen in preorder-Reihenfolge aus. }

    var
    Knoten : tRefBinBaum;

  begin
    if inWurzel <> nil then
    begin
      write (inWurzel^.info, '---');
      BaumAusgeben (inWurzel^.links);
      BaumAusgeben (inWurzel^.rechts);
    end; { if }
  end; { BaumAusgeben }





	procedure Baumpfad(inWurzel: tRefBinBaum; inSuch: integer); 
	
	begin 
	
	if inWurzel <> nil then 
	  if inSuch = inWurzel^.info then 
	  write(inSuch)
	  else 
	  begin
	  Baumpfad(inWurzel^.links,inSuch);
	  write(inWurzel^.info); 
	  Baumpfad(inWurzel^.rechts, inSuch)
	  end
	
	
	
	end;
	
	
			
		function Vorkommen (inRefWurzel : tRefBinBaum;inSuchwert : integer) : integer;
		{ ermittelt die Anzahl aller Knoten des Baumes, auf dessen
		Wurzel inRefWurzel zeigt, bei denen der Wert der
		info-Komponenten mit dem Wert von inSuchwert
		uebereinstimmt }
		var
		Anzahl : integer;
		begin
		if inRefWurzel = nil then
		Vorkommen := 0
		else
		begin
		Vorkommen := Vorkommen (inRefWurzel^.rechts, inSuchwert)
		+ Vorkommen (inRefWurzel^.links, inSuchwert);
		if inRefWurzel^.info >= inSuchwert then
		Vorkommen := Vorkommen + 1
		end; { if inRefWurzel = nil }
		end; { Vorkommen }
			
	 
		
		
		procedure HRZWei(inRefWurzel : tRefBinBaum; var ioDrucken : boolean); 
		
		var
		drucken : boolean ; 
		
		
		begin
		 if inRefWurzel<>NIL then
		begin 
		 drucken := ioDrucken; 
		 if drucken then 
		 begin
			write(inRefWurzel^.info); 
			drucken := false; 
			HRZWei(inRefWurzel^.links, drucken);
			HRZWei(inRefWurzel^.rechts, drucken)
		 end
		 else 
		 begin 
		 drucken := true;
		 HRZwei(inRefWurzel^.links, drucken); 
		 HRZwei(inRefWurzel^.rechts, drucken);
		 end
		 end
		end;
	
	
	   procedure HRZwei2(inRefWurzel:tRefBinBaum; var ioDrucken:boolean);
		{Gibt jeden zweiten Knotenwert der Hauptreihenfolge aus }
		begin
		if inRefWurzel<>NIL then
		{ Nur wenn der Baum nicht leer ist... }
		begin
		if ioDrucken then
		{ Muss der Wert ausgegeben werden? }
		writeln(inRefWurzel^.info);
		ioDrucken := not ioDrucken;
		 HRZwei(inRefWurzel^.links, ioDrucken);
		 HRZwei(inRefWurzel^.rechts, ioDrucken)
		end;
		end;
  

begin 

x := false;
BBAufbauen(mytree); 
HRZwei(mytree, x);
write('------------');
HRZWei2(mytree, x)
end .
