


program rechnen (input, output) ; 
	
	var 
	A, 
	B, 
	C : real; 
	L1, 
	L2 : real; 
	exist : boolean;

	procedure rechneaus ( a, b, c : real; 
				var Loesung1, Loesung2: real; 
				var gibtLoesung : boolean		
				); 
		
	var 
	hilfsvariable : real; 


	begin 
	
	if ((2*a) = 0) then 
		gibtLoesung := false
	else
	begin
		gibtLoesung := true;
		hilfsvariable := sqrt(b*b - (4*a*c));
		Loesung1 := (-b + hilfsvariable) / (2*a);
		Loesung2 := (-b - hilfsvariable) / (2*a);
	end

	end;  


	

begin 


A := 1.0; 
B := 3.0; 
C := 2.0;

rechneaus(A,B,C,L1,L2, exist);

writeln(L1:2:2, L2:2:2);




end.
