MOV AX,5000H
MOV BX,AX
ADD AX,1234H
MOV [2000H],AX
MOV AX,BX
SUB AX,1234H
MOV [2002H],AX
HLT