	TITLE "Aufgabe31d"
	ORG %0C

	; externen Stack anlegen
	LD P01M, #%10
	LD SPH, #%11
	LD SPL, #%00

	CALL L500
	NOP
	NOP

	ORG %500
	L500:
	CALL L600
	RET

	ORG %600
	L600:
	RET

	END
