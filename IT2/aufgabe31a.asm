	TITLE "Aufgabe 3.1a"

	ORG %C

	LD P01M, #%10
	LD RP, #0

	LD R4, #10 ; (Konstante)
	LD R6, #%12
	LDE @RR6, R4
	LDE R5, @RR6
	; Im Einzelschritt-Modus vergleichen,
	; ob Inhalt R4 mit Inhalt von R5 
	; uebereinstimmt
	LD R4, #%17 ; (andere Konstante)
	LDE @RR6, R4
	LDE R5, @RR6
	; Ein zweites mal im 
	; Einzelschritt-Modus vergleichen,
	; ob Inhalt von R4 mit Inhalt 
	; von R5 uebereinstimmt

	NOP

	END
