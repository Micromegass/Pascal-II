
program Seminar (input, output); 


const
MAX = 12;

type 
tStatus = (aktiv, passiv);
tIndex = 1..MAX;
studentenArray = array[tIndex] of tStatus; 
matrikelarray = array[tIndex] of integer;

var 
i : tIndex;
studentenstatus : studentenArray;
studentenmatrikel : matrikelarray;
eingabe_status : tStatus;
eingabe_matr : integer; 


begin 

	write('Status fuer', MAX, ' Studenten eingeben (aktiv/passiv)'); 
	for i:= 1 to MAX do
	begin
	write('Student', i);
	readln(eingabe_status);
	studentenstatus[i] := eingabe_status;
	
	writeln('Matrikelnummer', i);
	readln(eingabe_matr);
	studentenmatrikel[i] := eingabe_matr
	end ;
	

	writeln('Liste aktiver Teilnehmer: ');
	for i := 1 to MAX do 
		begin
		if studentenstatus[i] = aktiv then 
		writeln(studentenmatrikel[i])
		end; 
		
		
	writeln('Liste passiver Teilnehmer: ');
	for i := 1 to MAX do 
		begin
		if studentenstatus[i] = passiv then 
		writeln(studentenmatrikel[i])
		end; 
		
	
	writeln('Liste aller Teilnehmer: ');
	for i := 1 to MAX do 
		writeln(studentenmatrikel[i])
		


end. 
