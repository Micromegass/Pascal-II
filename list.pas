

program MatrixSummen (input, output);
{ ueberprueft bei einer Matrix von integer-Zahlen, ob
  jede Spaltensumme groesser ist als die Zeilensumme einer
  angegebenen Zeile }

  const
  ZEILENMAX = 3;
  SPALTENMAX = 4;

  type
  tMatrix = array [1..ZEILENMAX, 1..SPALTENMAX] of integer;

  var
  Matrix : tMatrix;
  ZeilenNr,
  SpaltenNr,
  Eingabe : integer;

  function ZeilenSummeKleiner (var inMatrix : tMatrix;
                                     inZeilenNr : integer) : boolean;
    { ergibt true, falls die Summe aller Elemente mit dem
      uebergebenen Zeilenindex kleiner ist als jede
      Spaltensumme }
      
     
     var 
     ZeilenNr,
	 SpaltenNr,
     ZSumme,
     SSumme : integer; 
     fertig : boolean; 
     ZSumGroesserGleich : boolean;
     
     
     
	begin  
	  
	  ZSumme := 0; 
	  for SpaltenNr := 1 to SPALTENMAX do 
		ZSumme := ZSumme + Matrix[inZeilenNr, SpaltenNr];
		
	    SpaltenNr := 1;
		fertig := false;
        ZSumGroesserGleich := false;
		
	   repeat  
	    SSumme := 0;
		for ZeilenNr := 1 to ZEILENMAX do 
		SSumme := SSumme + Matrix[ZeilenNr, SpaltenNr];
		
		if SSumme <= ZSumme then 
			ZSumGroesserGleich := true
		
		else 
		 if SpaltenNr < SPALTENMAX then
          SpaltenNr := SpaltenNr + 1
        else
          fertig := true
    until fertig or ZSumGroesserGleich;
    ZeilenSummeKleiner := not ZSumGroesserGleich
		
    end;{ ZeilenSummeKleiner } 
	 
 
 

begin { Matrixelemente einlesen } 
  for ZeilenNr := 1 to ZEILENMAX do
    for SpaltenNr := 1 to SPALTENMAX do 
      read (Matrix[ZeilenNr, SpaltenNr]); 
  repeat 
    write ('Welche Zeile soll ueberprueft werden ? (1..', ZEILENMAX, ') (anderes = Ende) '); 
    readln (Eingabe); 
    if (Eingabe > 0) and (Eingabe <= ZEILENMAX) then 
    begin
      ZeilenNr := Eingabe; { hier wird die Funktion ZeilenSummeKleiner aufgerufen } 
      if ZeilenSummeKleiner (Matrix,ZeilenNr) then 
        writeln ('Jede Spaltensumme ist groesser als die ', 'Zeilensumme der ', ZeilenNr, '. Zeile.') 
      else 
        writeln ('Es sind nicht alle Spaltensummen groesser als die ', 'Zeilensumme der ', ZeilenNr, '. Zeile.') 
    end; 
  until (Eingabe <= 0) or (Eingabe > ZEILENMAX)
end. { MatrixSummen } 




