



procedure preOrder (inRefWurzel : tRefBinBaum); 

	write(inRefWurzel^.info); 
	if inRefWurzel^.links <> nil then 
	  preOrder(inRefWurzel^.links)
