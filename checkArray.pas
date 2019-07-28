


program check (input, output) ; 

const
FELDGROESSE = 5;

type 
tFeld = array[tIndex] of integer; 

var
arr1 : tFeld; 
arr2 : tFeld; 





function (arr1 : tFeld, arr2 : tFeld) : boolean; 



begin 

		i := 1; 
		j := 1; 
		ergebnis := false;
		
		while (i <> FELDGROESSE) do 
			while arr1[i] <> arr2[j] do 
			begin
				if arr1[i] = arr2[j] then 
				ergebnis := true
				else 
				j := j + 1; 
				end;
			end;



end; 

begin 







end.
