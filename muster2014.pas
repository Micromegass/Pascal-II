program z (input, output) ; 

	type 
	tRefBinBaum = ^tBinBaum; 
	tBinBaum = record
				info : integer; 
				links : tRefBinBaum;
				rechts : tRefBinBaum
				end; 




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
  
  
  
  function BlattMax(inRefWurzel; inZahl : integer) : tRefBinBaum; 
  
  var 
  derzeitigesMax : integer; 
  
  begin
  
  if inRefwurzel^.info > inZahl then 
	derzeitigesMax := inRefwurzel^.info
  else 
    derzeitigesMax := inZahl; 
    
  
  if (inRefWurzel^-links = nil) and (inRefurzel^.rechts = nil) then 
  BlattMax := inRefWurzel^.info >= derzeitigesMax
  else
  BlattMax := BlattMax(inRefWUrzel^.links, derzeitigesMax) and 
			  BlattMax(inRefWUrzel^.rechts, derzeitigesMax)
			  
			  
  end;


begin 





end.
