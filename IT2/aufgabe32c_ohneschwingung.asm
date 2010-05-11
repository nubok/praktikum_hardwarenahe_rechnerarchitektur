	TITLE "Aufgabe32c"
	ORG %0C
	
	; Initialisierung
	LD P01M, #%0
	LD P2M,  #%FF
	LD P3M,  #%1

	; 4: Anzahl Aenderungen
	; 5: alter Wert von Port 2
	; 6: neuer Wert von Port 2
	LD 4, #0
	LD 5, P2

	; Aktuellen Wert des Zaehlers nach Port 0 ausgeben
	LD P0, 4
	
	begin:

	LD 6, P2
	CP 5, 6
	JP Z, begin

	INC 4
	LD P0, 4
	LD 5, 6

	JP begin
	END
