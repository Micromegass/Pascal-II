
program test2018 (inpur, output); 


type 
tRefListe = ^tListe; 
tListe 	  = record
			info : integer; 
			next : tRefListe
			end; 
	

	
var 
listA : tRefListe; 
listB : tRefListe;
listC : tRefListe;	


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
	
	
	

function sub(inListeA: tRefListe; inListeB: tRefListe): tRefListe;
	 var
	 ListeC: tRefListe;
	begin
	 if (inListeA = nil) then
	 sub := nil
	 else
	 if (inListeB = nil) then
	 begin
	 new(ListeC);
	 ListeC^.info := inListeA^.info;
	 ListeC^.next := sub(inListeA^.next, nil);
	 sub := ListeC
	 end
	 else
	 if inListeA^.info - inListeB^.info < 0 then
	 sub := sub(inListeA^.next, inListeB^.next)
	 else
	 begin
	 new(ListeC);
	 ListeC^.info := inListeA^.info - inListeB^.info;
	 ListeC^.next := sub(inListeA^.next, inListeB^.next);
	 sub := ListeC
	 end
	end; 


begin



listA := nil; 
listB := nil; 
listA := listeAufbauen(listA); 
writeln('neue Liste');s
listB := listeAufbauen(listB); 

writeln('-----------------------'); 

listC := sub(listA, listB); 
listeDrucken(listC); 







end.
