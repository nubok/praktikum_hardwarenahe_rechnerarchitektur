	TITLE "Aufgabe 3.2a - Erweiterung"
 
	ORG %C
	
	LD P01M, #%0
	LD P2M, #%FF
	LD P3M, #%01

begin	LD 4,P2

	RRC 4
	RLC 5
	RRC 4
	RLC 5
	RRC 4
	RLC 5
	RRC 4
	RLC 5
	RRC 4
	RLC 5
	RRC 4
	RLC 5
	RRC 4
	RLC 5
	RRC 4
	RLC 5

	LD P0, 5
	JP begin
	END