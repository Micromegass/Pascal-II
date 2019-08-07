


program adds (input, output) ; 



	const 
	MAX = 7; 

	type 
	tFeld = array[1..MAX] of integer;
	 

	var 
	myarr : tFeld; 
	
	i, Zahl: integer;
	
	
	function addsub(inFeld : tFeld) : integer; 
	
	var 
	negativ : boolean;
	result : integer; 
	i : integer;
	
	
	begin 
	
	result := inFeld[1]; 
	negativ := false; 
	
	for i:=1 to MAX do 
	begin
	 if negativ = false then 
	   begin 
	   result := result - inFeld[i+1] ;
	   negativ := true
	   end
	 else 
	  begin 
	   result := result + inFeld[i+1] ;
	   negativ := false
	   end
	 end; 
	 
	 addsub := result

	end; 







begin 

for i:=1 to MAX do 
  begin 
  write('Zahl: '); 
  readln(Zahl); 
  myarr[i] := Zahl
  end; 
  
write(addsub(myarr))
 

end .
