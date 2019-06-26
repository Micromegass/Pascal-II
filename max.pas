


program ma (input, output); 


var 
max : integer;
eingabe : integer;


begin 



    max := 0;
    readln (eingabe);
    while eingabe <> 0 do
    begin
      if eingabe > max then
        max := eingabe;
    end;
	write(max);

	


	
end. 	 

