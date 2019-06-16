
program Arr (input, output);

const 
MAX = 10;

type
tZahlen = 1..MAX;
tZahlenArray = array[tZahlen] of integer;

var 
i : integer;
zahlenarray : tZahlenArray; 
eingabe : integer;

min : integer;
minPos : integer;

begin 

	for i := 0 to MAX do 
		begin
		readln(eingabe);
		zahlenarray[i] := eingabe
		end;
		
	min := maxint;
	
	for i := 0 to MAX do  
		if zahlenarray[i] < min then 
		begin
			min := zahlenarray[i];
			minPos := i
		end ;
		
	
	write(min);
	write(minPos);

		

		

end.
