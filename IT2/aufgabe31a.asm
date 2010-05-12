	TITLE "Aufgabe 3.1a"

	ORG %C

	LD P01M, #%10
	LD RP, 	#0

	LD R4, #10	; (Kostante)
	LD R6, #%12
	LDE @RR6, R4
	LD R6, #%17
	LDE R5, @RR6

	LD R8, #18	; (weitere Konstante)
	LD R6, #%14
	LDE @RR6, R8
	LD R6, #%20
	LDE R9, @RR6

	NOP

	END
