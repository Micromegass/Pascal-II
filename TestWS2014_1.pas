


program PascalscheDreieck (input, output) ; 


type 
tRefListe = ^tListe; 
tListe 	  = record
			info : integer; 
			next : tRefListe
			end; 
	



var 
myList, myList2 : tRefListe;
	


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
		Zeiger^.info := Zahl; 
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
	  write(Zeiger^.info, '-->');
	  Zeiger := Zeiger^.next
	 end
	end;
	




function pascalscheDreieck(inRefAnfang : tRefListe) : tRefListe; 

	var 
	Zeiger1,
	Zeiger2, 
	Zeiger3 : tRefListe; 
	
	
	begin 
	 Zeiger1 := inRefAnfang; 
	 Zeiger2 := inRefAnfang^.next; 
	 
	 while Zeiger1^.next <> nil do 
	 begin
		Zeiger1^.next^.info := (Zeiger1^.info + Zeiger2^.info); 
		Zeiger1 := Zeiger1^.next; 
		Zeiger2 := Zeiger2^.next
	 end;
	 
	 if Zeiger1^.next = nil then
	 begin 
	  new(Zeiger3); 
	  Zeiger1^.next := Zeiger3; 
	  Zeiger3^.next := Zeiger2
	 end ; 
	 
	pascalscheDreieck := inRefAnfang



end;


begin


myList := nil; 

myList := listeAufbauen(myList);

myList2 := pascalscheDreieck(myList);


listeDrucken(myList)

end.
