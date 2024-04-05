.DATA
  MULTIPLICAND DW 1234H
  MULTIPLIER DW 3567H
  PRODUCT DW 2 DUP(0)
.CODE
  MAIN PROC
    MOV AX, DATA
    MOV DX, AX
    MOV AX, MULTIPLICAND
    MUL MULTIPLIER
    MOV PRODUCT, DX
    MOV PRODUCT+2, AX
  END MAIN                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            