
program testeBerechneTiefeUndMaxTiefe (input, output);
{ testet die Prozedur BerechneTiefeUndMaxTiefe }

  type
  tRefBinbaum = ^tBinbaum;
  tBinBaum = record
           Info,
           Tiefe : integer;
           links,
           rechts : tRefBinBaum;
          end;
  tNatZahl = 0..maxint;

  var
  Wurzel : tRefBinBaum;
  
  

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
      Zeiger^.Tiefe := 0;
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




procedure inorder(inRefWurzel : tRefBinBaum); 

	begin 
		if inRefWurzel <> nil then 
		begin
		   inorder(inRefWurzel^.links); 
		   write(inRefWurzel^.info);
		   inorder(inRefWurzel^.rechts)
	    end
	end;


	
procedure SymAusgabe (
              inRefWurzel : tRefBinBaum);
{gibt die Knotenwerte eines Binärbaums in 
 symmetrischer Reihenfolge aus}
begin
  if inRefWurzel <> nil then
  begin
    SymAusgabe(inRefWurzel^.links);
    write (inRefWurzel^.info);
    SymAusgabe(inRefWurzel^.rechts)
  end
end; {SymAusgabe}



procedure postorder(inRefWurzel : tRefBinBaum); 

begin 

if inRefWurzel <> nil then 
begin 
  postorder(inRefWurzel^.links); 
  postorder(inRefWurzel^.rechts); 
  write(inRefWurzel^.info)
end; 


end;


begin 

BBAufbauen(Wurzel); 
inorder(Wurzel);
write('---------');
postorder(Wurzel)


end.


