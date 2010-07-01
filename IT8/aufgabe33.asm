	TITLE "Aufgabe 32"
	ORG %C

	; Man beachte: Bit 2 = 1 (interner Stack)
	LD P01M, #%45
	LD P2M,  #%00
	LD P3M,  #%01
	LD RP,   #%10
	
	; Stack initialisieren
	LD SPL,  #%80

loop:
	LD	p3, #%30
	LD	p3, #%10

	NOP

	LD 	r0, p0

	; r0 - ausgelesener Wert

	; Ausgelesener Wert nach Register 4
	LD 4, r0
	LD 10, 4
	CALL moddiv10
	LD 5, 11

	LD 10, 12
	CALL moddiv10
	; Register 6 dient als Hilfsregister
	LD 6, 11
	; Register 6 um 4 Bits nach links schieben
	RL 6
	RL 6
	RL 6
	RL 6
	AND 6, #%F0

	; Den geshifteten Wert als zweite Tetrade nach Register 5 bringen
	OR 5, 6

	LD 10, 12
	CALL moddiv10
	LD 6, 11

	; Ergebnis:
	; Register 5: zwei Tetraden
	; Register 6: hoechste Tetrade

	LD P1, 5

	; Unterste Bits von r0 loeschen und
	; durch diese von Register 6 ersetzen (dessen
	; oberste 4 Bits 0 sind)
	AND r0, #%F0
	OR	r0, 6
	LD	p2, r0

	jp	loop


moddiv10:
	; Eingabe: Register 10
	; Ausgabe: Register 11: Modulus bzgl. 10
	;          Register 12: ganzz. Division bzgl. 10
	LD 11, #0
	LD 12, #0
begin_loop_moddiv:
	CP 10, #9
	JP ULE, end_loop_moddiv
	SUB 10, #10
	INC 12
	JP begin_loop_moddiv

end_loop_moddiv:
	LD 11, 10
	RET

	END
