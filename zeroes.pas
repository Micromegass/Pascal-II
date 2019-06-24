

program zeroes (output);

const
MAX = 12;

type 
tIndex = 1..MAX;
tarr = array[tIndex] of integer; 

var 
arr : tarr; 
i : tIndex; 
j : tIndex;
eingabe : integer;


begin 


	
  for i:= 1 to MAX do 
  begin 
   readln(eingabe);
   arr[i] := eingabe
  end;
   
   

  for i := 1 to MAX do 
	for j:= i+1 to MAX do
		if arr[i] = arr[j] then
		arr[j] := 0;


  for i:= 1 to MAX do  
   writeln(arr[i])

end.


