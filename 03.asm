	ORG 00H
	ldi low main
	plo 3
	ldi high main
	phi 3
	sep 3
main	SEQ		;Set Q
	LDI low delay
	PLO 7
	ldi high delay
	phi 7
	SEP 7
	REQ		;Reset Q
	SEP 7
	BR main
exitd	sep 3
delay	LDI 20H
	PHI 0fh
loop	DEC 0fh
	GHI 0fh
	bz exitd
	br loop
	END
