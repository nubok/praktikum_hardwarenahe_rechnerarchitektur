	TITLE "Aufgabe32a"
	ORG %0C
	LD P01M,  #%0
	LD P2M, #%FF
	LD P3M, #%1
	
	begin:
	LD 0, 2
	JP begin
	END
