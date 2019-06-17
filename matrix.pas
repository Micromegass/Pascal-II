
program Matrixx (input, output); 

const
ZEILENMAX = 3; 
SPALTENMAX = 4; 

type
tZeile = 1..ZEILENMAX; 
tSpalte = 1..SPALTENMAX; 

tMatrix = array[tZeile, tSpalte] of integer;
tZeilensumme = array[tZeile] of integer; 
tSpaltensumme = array[tSpalte] of integer; 


var 
matrix : tMatrix; 
Zeilensumme: tZeilensumme;
Spaltensumme : tSpaltensumme;
i : integer;
j : integer;

begin 

	for i := 1 to ZEILENMAX do 
		for j := 1 to SPALTENMAX do 
			readln(matrix[i,j]);
			
	for i:= 1 to ZEILENMAX do 
	begin
		Zeilensumme[i] := 0;
		for j := 1 to SPALTENMAX do 
			Zeilensumme[i] := Zeilensumme[i] + matrix[i,j]	
	end; 
	
	 
	for j:= 1 to SPALTENMAX do
		begin
		Spaltensumme[j] := 0;
		for i:=1 to ZEILENMAX do 
			Spaltensumme[j] := Spaltensumme[j] + matrix[i,j]
		end;

	for i := 1 to ZEILENMAX do 
	begin
		for j := 1 to SPALTENMAX do 
			write(matrix[i,j]:5);
		writeln(Zeilensumme[i]:10)
	end;
	
	for i:=1 to SPALTENMAX do
		write(Spaltensumme[i]:5);
	writeln
	
	



end.
