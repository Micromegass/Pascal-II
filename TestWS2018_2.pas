
program buildTree (input, output) ;


	type 
	tRefBinBaum = ^tBinBaum; 
	tBinBaum = record 
				info : integer; 
				next : tRefBinBaum;
				links : tRefBinBaum; 
				rechts : tRefBinBaum
				end; 
				
				
				
				
	var 
	myroot : tRefBinBaum; 
				
				
	procedure BBKnotenEinfuegen (inZahl :integer; 
								var ioRefWurzel : tRefBinBaum); 
								
								{...}
								
	
	var 
	RefSohn, 
	RefVater : tRefBinBaum; 
	gefunden : boolean; 
	
	
	begin 
	 
	RefSohn := ioRefWurzel; 
	gefunden := false; 
	
	while (RefSohn <> nil ) and (not gefunden) do 
	begin 
	 if RefSohn^.info = inZahl then 
	 gefunden := true
	 else 
	  begin 
	  RefVater := RefSohn; 
	  
	  if inZahl < RefSohn^.info then 
	    RefSohn := RefSohn^.links
	   
	  else 
	    RefSohn := RefSohn^.rechts
	    
	  end
	 end;
	 
	 if not gefunden then 
	 {..}
	 begin 
	 
		new(RefSohn); 
		RefSohn^.info := inZahl;
		RefSohn^.links := nil; 
		RefSohn^.rechts := nil; 
		
		{anfuegen}
		
		if ioRefWurzel = nil then 
		
		ioRefWurzel := RefSohn 
		
		else 
		if inZahl < RefVater^.info then
		RefVater^.links := RefSohn
		else 
		RefVater^.rechts := RefSohn

	 end
	end; 	
	
			
				
	procedure build (var outRefWurzel : tRefBinBaum); 
	
		var 
		zahl : integer; 
		
		
		
		begin 
		
			outRefWurzel := nil; 
			readln(Zahl);
			
			while Zahl <> 0 do 
			
			begin 
			
			BBKnotenEinfuegen(Zahl, outRefWurzel); 
			readln(Zahl)
			
			end 
			
		end; 
		
		
		
	procedure preorder(inRefWurzel : tRefBinBaum) ; 
	
	begin 
	if inRefWurzel <> nil then 
	begin 
		writeln('value: ', inRefWurzel^.info); 
		preorder(inRefWurzel^.links); 
		preorder(inRefWurzel^.rechts)
	end 
	end; 
		
		
		



procedure setLevelOrder(inBaum:tRefBinBaum);
 var
 lauf :tRefBinBaum;
 listenEnde :tRefBinBaum;
begin
 lauf := inBaum;
 listenEnde := lauf;
 while (lauf <> nil) do
 begin
 if (lauf^.links <> nil) then
 begin
 listenEnde^.next := lauf^.links;
 listenEnde := listenEnde^.next;
 end;
 if (lauf^.rechts <> nil) then
 begin
 listenEnde^.next := lauf^.rechts;
 listenEnde := listenEnde^.next;
 end;
 lauf := lauf^.next
 end
end;		
		
		
procedure levelOrder(inBaum:tRefBinBaum);
begin
 if (inBaum <> nil) then
 begin
 writeln(inBaum^.info);
 levelOrder(inBaum^.next)
 end
end;		
		
		
		
		
		
		
begin


myroot := nil; 
build(myroot); 

write('Tree in Preorder: ');
preorder(myroot); 
write('--------------------------- ');


setLevelOrder(myroot); 
writeln;
write('set Level Order: ');
write('---------------------------- ');

levelOrder(myroot)
 
end.
