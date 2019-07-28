
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





  function findnum(inWurzel : tRefBinBaum; inZahl : integer) : boolean; 
  
  
  
  var 
  ergebnis : boolean; 
  
  
  begin
  
	if inRefWurzel^.info <> inZahl then 
		
		ergebnis := findnum()
  
	
	

  end;


begin 

BBAufbauen(mytree); 
BaumAusgeben(mytree);
x := findNum(mytree, 4);
write(x)

end .
