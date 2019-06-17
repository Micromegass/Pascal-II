
program Median (input, output); 


	type 
	tBuchst = 'a'..'z';
	tNatZahl = 0..maxint; 
	tarray = array[tBuchst] of boolean; 

	var 
	vorhanden : tarray; 
	gesamt, 
	i, 
	MedianPos : tNatZahl; 
	Buchstabe : tBuchst; 
	Zeichen : char; 




begin

	writeln('Buchstaben eingebeb: ');

	for Buchstabe := 'a' to 'z' do
		vorhanden[Buchstabe] := false; 
	gesamt := 0; 
	
	readln(Zeichen); 
	
	while (Zeichen >= 'a') and (Zeichen <= 'z') do 
	begin 
		if not vorhanden[Zeichen] then 
		begin 
		vorhanden[Zeichen] := true; 
		gesamt := gesamt + 1
		end; 
		read(Zeichen)
	end; 
	writeln; 
	
	for Buchstabe := 'a' to 'z' do 
		write(Buchstabe);
	writeln;
	
	for Buchstabe := 'a' to 'z' do 
		if vorhanden[Buchstabe] then 
		write('*')
		else
		write(' ');
		
		writeln;
		
		
	MedianPos := (gesamt + 1) div 2; 
	Buchstabe := 'a';
	i := 0; 
	
	repeat 
		if vorhanden[Buchstabe] then
			i := i + 1; 
		Buchstabe := succ(Buchstabe)
	until i = MedianPos;
	
	writeln('Median is: ', pred(Buchstabe))
		






end.
