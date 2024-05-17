	AREA PROG1, CODE, READONLY
	ENTRY
START
	LDR R0, =count
	LDR r1, [r0]
	ldr r2, =array
	ldr r3, [r2], #4
	b back
back subs r1, r1, #01
	beq fwd
	ldr r4, [r2], #4
	cmp r3, r4
	bgt back
	mov r3, r4
	b back
fwd ldr r5,=RESULT
	str r3, [r5]
exit b exit
count dcd 0x07
array
	dcd 0x15
	dcd 0x35
	dcd 0x32
	dcd 0x45
	dcd 0x10
	dcd 0x4f
	dcd 0x34
	AREA DATA2,DATA,READWRITE
RESULT dcd 0x0
	END
