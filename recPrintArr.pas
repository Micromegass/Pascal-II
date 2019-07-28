

program recArr (input, output) ; 



const
FELDGROESSE = 5;


type 
tIndex = 1..FELDGROESSE;
tFeld = array[tIndex] of integer; 
inPos = tIndex;




	function xy (inPos : tIndex; inFeld : tFeld) : tFeld; 
	
	begin 
	
		if inPos = FELDGROESSE then 
			write(inFeld[inPos])
		else
		begin
			xy(inPos + 1, inFeld); 
			
			write(inFeld[inPos])
		end
	
	end;





begin 






end.
