

program y (input,  output) ; 


const 
FELDGROESSE = 5; 


type 
tIndex = 1..FELDGROESSE; 
tFeld = array[tIndex] of integer; 

var 
myarr1 : tFeld; 
i : tIndex; 
Zahl : integer; 
x : boolean;

	function kleinerals(var arr : tFeld) : boolean ; 

	var 
	geordnet : boolean; 
	

	begin 
		
		geordnet := true; 
		for i := 1 to FELDGROESSE do 
		  if arr[i] > arr[i+1] then 
		    geordnet := false; 
		    
		kleinerals := geordnet    

	end; 



begin

for i := 1 to FELDGROESSE do 
	begin
	write('Zahl: '); 
	readln(Zahl); 
	myarr1[i] := Zahl; 
	end; 
	
	
x := kleinerals(myarr1); 
write(x)

end. 
