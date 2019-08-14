


program einfuegen (input, output) ; 



type
tRefListe = ^tListe ;
tListe 	= record 
		  wert : integer; 
		  next : tRefListe;
		  tier : string
		  end; 
	
	
	
procedure ef(var inRefAnfang : tRefListe; i : integer; t : char); 
	
	var 
	Zeiger, Element,
	Hilf : tRefListe; 
	gefunden : boolean; 
	
	
	
	begin 
	gefunden := false; 
	Zeiger := inRefAnfang^.next;
	Hilf :=  inRefAnfang; 
	new(Element) ; 
	Element^.wert := i ; 
	Element^.tier := t;
	
	  if (Zeiger = nil) or (Element^.wert <= inRefAnfang^.wert) then
	  begin 
	    Element^.next := inRefAnfang; 
	    inRefAnfang := Element
	  end
	  else 
	  begin
	    while (Zeiger^.next <> nil) and (not gefunden) do  
	    begin
	      if Zeiger^.wert >= i then 
	      begin 
	        Element^.next := Zeiger; 
	        Hilf^.next := Element; 
	        gefunden := true
	      end
	      else 
	      begin
	        Hilf := Zeiger ; 
	        Zeiger := Zeiger^.next
	      end
	     end 
	    end;
	    
	 
	 
	   if (Zeiger^.next = nil) and (not gefunden) then 
	   begin 
	   Zeiger^.next := Element; 
	   Element^.next = nil
	   end;
			 
	     
	 Zeiger := inRefAnfang; 
	 while Zeiger <> nil do 
	 begin
	   if Zeiger^.wert = Zeiger^.next^.wert then 
	   begin
		  Zeiger^.next^.wert := Zeiger^.next^.wert +1;
		  Zeiger := Zeiger^.next
		end 
		else 
	     Zeiger := Zeiger^.next
	  end; 
	
end;
		
begin 

	


end.
