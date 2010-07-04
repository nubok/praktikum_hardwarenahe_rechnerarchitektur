	TITLE "Aufgabe 34"
	ORG %C

	; Man beachte: Bit 2 = 1 (interner Stack)
	LD P01M, #%45
	LD P2M,  #%00
	LD P3M,  #%01
	LD RP,   #%10
	
	; Stack initialisieren
	LD SPL,  #%80

loop:
	LD 10,   #%20
	LD 11,   #%0
	CALL read_loop

	LD 10,   #%30
	LD 11,   #%10
	CALL read_loop

	JP  loop


; Fragt Port 3 ab und macht 4 Sekunden Pause
; Parameter: Register 10: erster Wert fuer P3 (#%30 oder #%20)
;            Register 11: zweiter Wert fuer P3 (#%10 oder #%10)
read_loop:
	
	CALL channel_read_and_output

	LD R10, #16
loop0:
	LD R11, #0
loop1:
	LD R12, #0
loop2:
	DJNZ R12, loop2
	DJNZ R11, loop1
	DJNZ R10, loop0

	RET


; Fragt Port 3 ab und gibt ihn aus
; Parameter: Register 10: erster Wert fuer P3 (#%30 oder #%20)
;            Register 11: zweiter Wert fuer P3 (#%10 oder #%10)
channel_read_and_output:
	LD   P3, 10
	LD   P3, 11

	NOP
	
	LD   R0, P0
	; R0 - ausgelesener Wert

	LD   10, R0
	CALL moddiv10
	LD   5,  11

	LD   10, 12
	CALL moddiv10
	; Register 6 dient als Hilfsregister
	LD   6,  11
	; Register 6 um 4 Bits nach links schieben
	RL   6
	RL   6
	RL   6
	RL   6
	AND  6,  #%F0

	; Den geshifteten Wert als zweite Tetrade 
	; nach Register 5 bringen
	OR 5, 6

	LD 10, 12
	CALL moddiv10
	LD 6, 11

	; Ergebnis:
	; Register 5: zwei Tetraden
	; Register 6: hoechste Tetrade

	LD P1, 5

	CP 6, #0
	JP NE, ne_label

	LD 6, #%0A

ne_label:
	; Unterste Bits von r0 loeschen und
	; durch diese von Register 6 ersetzen (dessen
	; oberste 4 Bits 0 sind)
	AND R0, #%F0
	OR	R0, 6
	LD	P2, R0
	
	RET


moddiv10:
	; Eingabe: Register 10
	; Ausgabe: Register 11: Modulus bzgl. 10
	;          Register 12: ganzz. Division bzgl. 10
	LD  12,  #0
begin_loop_moddiv:
	CP  10,  #9
	JP  ULE, end_loop_moddiv
	SUB 10,  #10
	INC 12
	JP begin_loop_moddiv

end_loop_moddiv:
	LD  11,  10
	RET

	END
