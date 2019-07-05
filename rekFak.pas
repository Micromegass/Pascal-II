



program FakRes (input, output) ; 

var
x : integer; 


	function fak(inZahl : integer) : integer; 
	
		begin
		if inZahl = 0 then 
		fak := 1
		else  
			fak := inZahl * fak(inZahl - 1);
		end; 
		
		
begin 

	x := (fak(3));
	write(x)


end.
