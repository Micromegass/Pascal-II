

program xy (input, output) ; 


  const
  UNTEN = 1; { Array-Untergrenze }
  OBEN = 10; { Array-Obergrenze }

  type
  tIndex = UNTEN..OBEN;
  tFeld = array[tIndex] of integer;
  
  
  var
  myarray : tFeld;
  i : integer;
  Zahl : integer;

function FeldMaxA (
              inFeld : tFeld;
              inUnten,
              inOben : tIndex) : integer;
	{ Getting the recursive Max in an array }
	
	var 
	lokMax : integer; 
	
	begin 
		
	 if inUnten = inOben then
		FeldMaxA := inFeld[inUnten]
	 else
	 begin
		lokmax := FeldMaxA(inFeld, inUnten, inOben - 1);

	if  lokmax > inFeld[oben] then
		FeldMaxA := lokmax
	else
		FeldMaxA := inFeld[Oben]
		
	end	
	end ; 
	
	
	
	
	function FeldMaxB (
          var inFeld : tFeld;
              inUnten,
              inOben : tIndex) : integer;
{ bestimmt rekursiv das Maximum in einem Feld
    mit den Grenzen inUnten und inOben }

  var
  Mitte : tIndex;
  MaxL,
  MaxR : integer;

begin
  if inUnten = inOben then
    FeldMaxB := inFeld[inUnten]
  else
  begin
    Mitte := (inUnten + inOben) div 2;
    MaxL := FeldMaxB (inFeld,inUnten,Mitte);
    MaxR := FeldMaxB (inFeld,Mitte+1,inOben);
    if MaxL > MaxR then
      FeldMaxB := MaxL
    else
      FeldMaxB := MaxR
  end
end; { FeldMaxA }
	
	
	begin 
	
	for i:=1 to OBEN do 
	begin
		writeln('Zahl eingeben: '); 
		readln(Zahl); 
		myarray[i] := Zahl
	end ; 
	
	writeln('Maximum is: ', FeldMaxB(myarray, UNTEN, OBEN)); 
	
	
	end.


