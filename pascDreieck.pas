


program x (input, output) ; 

	type 
	tRefListe = ^tListe ; 
	tListe = record 
				wert : integer; 
				next : tRefListe
				end; 
				
				
				
var
mylist : tRefListe;
			
function listeAufbauen (outRefAnfang : tRefListe) : tRefListe;

	var 
	Zeiger : tRefListe;
	Zahl : integer;

	begin
	 outRefAnfang := nil; 
	 write('Zahl eingeben: ');
	 readln(Zahl);
	 while Zahl <> 99 do 
	 begin
		new(Zeiger); 
		Zeiger^.wert := Zahl; 
		Zeiger^.next := outRefAnfang; 
		outRefAnfang := Zeiger; 
		write('Zahl eingeben: ');
		readln(Zahl)
	 end;
	 listeAufbauen := outRefAnfang
	end; 
	
	
	
	
procedure listeDrucken (inRefAnfang: tRefListe);

	var 
	Zeiger : tRefListe; 
	
	begin
	Zeiger := inRefAnfang; 
	while Zeiger <> nil do 
	 begin
	  write(Zeiger^.wert, '-->');
	  Zeiger := Zeiger^.next
	 end
	end;
		



	function PascalscheDreieck(inRefAnfang: tRefListe): tRefListe;
	
	
	end;
    
    
begin 

mylist := nil; 
mylist := listeAufbauen(mylist); 
mylist := PascalscheDreieck(mylist); 
listeDrucken(mylist)


end.
