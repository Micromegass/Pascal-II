program perfekteZahl (input, output) ; 

var 
result, i, j: integer; 

begin 


for i:=2 to 1000 do
begin
    result := 0;
	for j:=(i div 2) downto 1 do 
	if i mod j = 0 then 
	 result := result + j; 
	if result = i then 
	 write(result);
	end 
end.

