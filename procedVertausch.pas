
program xyz (input, output); 


var 
x, 
y : integer; 


procedure vert (var inouthin, inouther : integer ); 
	
		var 
		Tausch : integer; 
		
		begin 
		
		Tausch := inouthin; 
		inouthin := inouther; 
		inouther := Tausch; 
		
		end; 

begin 

	x := 5; 
	y := 10;

	vert(x, y); 
	
	write('x ist: ', x);
	write('y ist: ', y);

end.
