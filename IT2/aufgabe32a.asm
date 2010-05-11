	TITLE "Aufgabe32a"
	ORG %0C
	; Initialiere Port 0 fuer Ausgabe
	LD P01M, #%0
	; Definiere alle Bits von Port 2
	; als Eingabe-Bits	
	LD P2M,  #%FF
	; Setze Port 2 auf Push-Pull
	LD P3M,  #%1
	begin:
	LD 0, 2
	JP begin
	END
