


program zyklisch (input, output) ; 



	const
	LAST = 7; 

	type 
	tFeld = array[1..LAST] of integer; 


	var 
	myFeld : tFeld; 
	i , Zahl :integer;

	procedure VerschiebeZyklisch (var ioFeld : tFeld);
	{ verschiebt die Werte innerhalb eines Feldes eine Position
	nach rechts; der Wert ioFeld[MAX] wird nach ioFeld[1]
	übertragen }
	var
	sicher: integer;
	ix: integer;
	begin
	sicher := ioFeld[LAST];
	(* Der letzte Feldinhalt wird gesichert *)
	for ix := LAST downto 2 do
	  ioFeld[ix] := ioFeld[ix-1];
	(* Die Feldinhalte mit Ausnahme des Letzten werden um eine
	Position nach rechts verschoben *)
	ioFeld[1] := sicher
	(* Das ehemalig letzte Element wird neues erstes *)
	end;{VerschiebeZyklisch}



	procedure verschiebe (var ioFeld : tFeld); 
	
	var 
	sicher: integer;
	i : integer;
	
	begin
		sicher := ioFeld[LAST];	
		for i:=LAST downto 2 do 
			ioFeld[i] := ioFeld[i-1] ; 

		ioFeld[1] := sicher ; 
	
	end; 
	
	
	
	procedure verschiebeBis (inWert : integer; var ioFeld : tFeld); 
	
	var 
	kommtVor : boolean; 
	j : integer;
	
	begin 
		kommtVor := false; 
		for j:=1 to LAST do 
			if ioFeld[j] = inWert then 
			kommtVor := true;
		
		if kommtVor then
		  while inWert <> ioFeld[1] do 
		    verschiebe(ioFeld);
	end;



	

begin 

for i:=1 to LAST do 
begin
	write('Zahl: ');
	readln(Zahl); 
	myFeld[i] := Zahl
end ;


verschiebeBis(5,myFeld );


for i := 1 to LAST do 
	write(myFeld[i]);


	

end.
