
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
	y : integer;

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

   
  begin
    if inWurzel <> nil then
    begin
      write (inWurzel^.info, '---');
      BaumAusgeben (inWurzel^.links);
      BaumAusgeben (inWurzel^.rechts);
    end; { if }
  end; { BaumAusgeben }
  
  
  
  function AddiereBinBaum(inBaum:tRefBinBaum):integer;
	{Addiert die Werte aller Knoten des BBaumes inBaum.}
	begin
	if inBaum=nil then
	 {Abbruchbedingung: Der Baum ist leer.}
	 AddiereBinBaum:=0
	 else
	 {Rekursionsfall: Addition des Wertes mit den zwei Summen der
	 Unterbäume.}
	 AddiereBinBaum:=inBaum^.info+AddiereBinBaum(inBaum^.links)
	+AddiereBinBaum(inBaum^.rechts)
	end;
  
  
  
  
    function AddiereBinBaum2(inBaum:tRefBinBaum):integer;
    
	
	begin 
	  if inBaum = nil then 
	    AddiereBinBaum2 := 0
	  else 
	  begin
	    AddiereBinBaum2 := inBaum^.info + AddiereBinBaum2(inBaum^.links) +
	             AddiereBinBaum2(inBaum^.rechts)
	  
	  end
	
	end;



begin 

BBAufbauen(mytree); 
y := AddiereBinBaum2(mytree);
write(y)


end.
