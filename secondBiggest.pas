
function FeldZweitMax (var inFeld : tFeld) : integer;
{ bestimmt die zweitgroesste Zahl in inFeld }

  var
  Max,
  ZweitMax : integer;
  Index : tIndex;

begin
{ Max und Zweitmax initialisieren }
  if inFeld[1] < inFeld[2] then    [3,4,56,7,8,9,0,0,8,7,3]
  begin
    Max := inFeld[2];
    ZweitMax := inFeld[1]
  end
  else
  begin
    Max := inFeld[1];
    ZweitMax := inFeld[2]
  end;
  { Rest von inFeld durchsuchen }
  for Index := 3 to FELDGROESSE do
    if inFeld[Index] > Max then 
    { neues Maximum gefunden }
    begin
      ZweitMax := Max;
      Max := inFeld[Index];
    end
    else
      if inFeld[Index] > ZweitMax then 
      { neue zweitgroesste Zahl gefunden }
        ZweitMax := inFeld[Index];
  { Ende der for-Anweisung }
  FeldZweitMax := ZweitMax
end; { FeldZweitMax }
