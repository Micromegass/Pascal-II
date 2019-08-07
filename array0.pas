


program arr0 (input, output) ; 


type 
tFeld = array[1..10] of integer; 


var 
index, Zahl,a,b,c: integer; 
myarr : tFeld ; 




procedure zeros (var arr : tFeld); 

	var 
	i, j : integer; 
	
	
	begin  
	for i := 1 to 10 do 
		for j := i+1 to 10 do 
		  if arr[i] = arr[j] then 
		    arr[j] := 0; 
		    
		    
	end; 
	 




begin 

b := -5; 
a := 7; 

c := a - b;
write(c);





end.
