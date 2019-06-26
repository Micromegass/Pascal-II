
program transp (input, output); 


  const
  GROESSE = 5;
  type
  tMatrix = array [1..GROESSE,1..GROESSE] of integer;

  var
  A : tMatrix;
  tauschPuffer,
  i,
  j : integer;




begin 


{ Lesen der Matrixwerte in A: }
  for i := 1 to GROESSE do
    for j := 1 to GROESSE do
      readln (A[i,j]);







 for i := 1 to GROESSE do
    for j := 1 to GROESSE do
      writeln (A[i,j]);


end. 
