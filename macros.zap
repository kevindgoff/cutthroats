

	.FUNCT	PICK-ONE,FROB
	GET	FROB,0
	RANDOM	STACK
	GET	FROB,STACK
	RSTACK	


	.FUNCT	DPRINT,OBJ
	GETP	OBJ,P?SDESC
	ZERO?	STACK /?ELS5
	GETP	OBJ,P?SDESC
	PRINT	STACK
	RTRUE	
?ELS5:	PRINTD	OBJ
	RTRUE	


	.FUNCT	APRINT,OBJ
	FSET?	OBJ,PERSON /?THN6
	EQUAL?	OBJ,PETES-PATCH \?ELS5
?THN6:	CALL	DPRINT,OBJ
	RSTACK	
?ELS5:	FSET?	OBJ,VOWELBIT \?ELS11
	PRINTI	"an "
	CALL	DPRINT,OBJ
	RSTACK	
?ELS11:	PRINTI	"a "
	CALL	DPRINT,OBJ
	RSTACK	

	.ENDI
