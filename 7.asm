
ORG 100H
MOV AX, @DATA
MOV DS, AX
LEA DX, STR1
MOV AH, 9
INT 21H     
MOV AH, 1
INT 21H
MOV BL, AL
LEA DX, STR2
MOV AH, 9
INT 21H 
MOV AH, 1
INT 21H
MOV BH, AL
CMP BL, BH
    JG L1
    JL L2
L1: 
    LEA DX, STRL
    MOV AH, 9
    INT 21H  
    MOV AH, 2
    MOV DL, BH
    INT 21H
    JMP EXIT 
L2: 
    LEA DX, STRL
    MOV AH, 9
    INT 21H  
    MOV AH, 2
    MOV DL, BL
    INT 21H
    JMP EXIT
EXIT:
RET                
STR1 DB "Enter int 1: $"
STR2 DB 13D,10D,"Enter int 2: $"
STRL DB 13D,10D,"Smallest int: $"




