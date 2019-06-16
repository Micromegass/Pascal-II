
program Maxi (input, output); 

const 
MAX = 4;


var 
eingabe : integer;
minimum : integer;


begin 
	readln(eingabe);
	minimum := eingabe; 
	
	while eingabe <> 0 do
	begin
		if eingabe < minimum then 
		minimum := eingabe;
	readln(eingabe)
	end; 
	
	if minimum <> 0 then 
		write(minimum)
	else
		write('nur eine 0 eingegebne')
	
end. 


