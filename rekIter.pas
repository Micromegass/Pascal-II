



program rekIter (input, output) ;



var 
x : integer;



	function itRek (inZahl : integer) : integer; 
	
	var 
	result, 
	i : integer; 
	
	
	begin 
	
	result := 1; 
	
	for i := 1 to inZahl do 
	  result := i * result; 
	
	itRek := result
	
	end; 
	
	
begin 


x := itRek(5);
write(x);
	


end.
	
	
	
