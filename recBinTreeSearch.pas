
program nbrLookup (input, output) ; 



	type 
	tRefBinBaum = ^tBinBaum; 
	tBinBaum = record
				info : integer; 
				links : tRefBinBaum;
				rechts : tRefBinBaum
				end; 


var 
myRoot : tRefBinBaum;
myNbr : integer;


function rekSu(inZahl : integer; inRefWurzel : tRefBinBaum) : tRefBinBaum;


	var
	Zeiger : tRefBinBaum; 
	

	begin 
	
		Zeiger := inRefWurzel; 
		if inRefWurzel <> nil then 
			if inZahl < inRefWurzel^.info then 
				Zeiger := rekSu(inZahl, inRefWurzel^.links)
			else 
			    if inZahl > inRefWurzel^.info then 
				Zeiger := rekSu(inZahl, inRefWurzel^.rechts); 
		
		rekSu := Zeiger; 

	
	end; 
	
	

function rekSu2(inZahl : integer; inRefWurzel : tRefBinBaum) : tRefBinBaum; 


	var
	Zeiger : tRefBinBaum; 
	
	begin 
		Zeiger := inRefWurzel;
		 
		if inRefWurzel^.info = inZahl then 
			rekSu2 := Zeiger
		else
			if inZahl < inRefWurzel^.info then 
				Zeiger := rekSu(inZahl, inRefWurzel^.links)
			else 
				if inZahl > inRefWurzel^.info then 
				Zeiger := rekSu(inZahl, inRefWurzel^.rechts); 
				
		rekSu2 := Zeiger

	end; 
	
	
	
	
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
			write('Zahl') ;
			readln(Zahl)
			
			end 
			
			
		
		
		
		end; 

begin 

myRoot := nil; 
build(myRoot); 

readln(myNbr); 


rekSu(myNbr, myRoot);




end.
