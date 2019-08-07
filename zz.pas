
program  zz (input , output); 


 type
      tNatZahl = 0..maxint;
    
  function Summe (inZahl : tNatZahl) : tNatZahl;
    { Die Funktion bildet die Summe der Zahlen von 0 bis Zahl }
    var i,
      sum: tNatZahl;
  begin
    i := 0;
    sum := 0;
    while i  <= inZahl do
    begin
      sum := sum + 1;
      i := i + 1;
    end;
    Summe := sum
  end; { Summe }


begin

write(Summe(3));

end .
