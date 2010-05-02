	TITLE "Aufgabe34b"
	ORG %0C

	; Init P3M
	LD P3M, #%0 ; Insbesondere D5=0: P31 = TIN

	; Init TMR
	; 00001100: lower nibble: disable T0, enable T1, 
	; Bit 4 and 5: external clock input, 
	; Bit 6 and 7: 10 TOUT as T1 Out
	LD TMR, #%8C 

	; Init PRE1
	; Maximum 6 bit, lower 2 bits: 
	; 0: TIN Mode, 1: Modulo N
	LD PRE1, #%01 
	; Init T1
	LD T1, #%00 ; Maximum 8 bit

	Label: JP Label

