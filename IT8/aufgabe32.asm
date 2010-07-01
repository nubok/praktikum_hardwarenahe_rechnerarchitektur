	TITLE "Aufgabe 32"
	ORG %C

	LD P01M, #%45
	LD P2M,  #%00
	LD P3M,  #%01
	LD RP,   #%10

loop:
	LD	P3, #%30
	LD	P3, #%10

	NOP

	LD 	R0, P0
	OR	R0, #%0F
	LD	P2, R0
	LD 	P1, #%FF
	JP	loop
	
	END
