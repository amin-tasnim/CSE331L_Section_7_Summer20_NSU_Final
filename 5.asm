
 org 100h
MOV AX, @Data
MOV DS,AX
LEA DX,STR1
MOV AH,9
INT 21H
MOV AH,1
INT 21H
SUB AL, 30H  
MOV BH, AL
LEA SI, ARR1 
MOV CX, 00H
MOV CL, BH

LOOP1: 
        MOV AL, [SI]
        MOV BL, [SI+1]
        ADD AL,BL
        MOV [SI+2], AL
        INC SI
LOOP LOOP1  
  LEA SI, ARR1
  MOV CX, 00H
  MOV CL, BH
  MOV AH, 2
MOV AH,2
MOV DL,10d
INT 21H     
MOV DL,13d  
INT 21H 
LEA DX,STR2
MOV AH,9
INT 21H    
LOOP2:
      MOV AL, [SI]
      AAM
      MOV DH, AL
      MOV DL, AH
      MOV AH, 2

      
      ADD DL, 30H
      ADD DH, 30H
      INT 21H
      MOV DL, DH
      INT 21H
      MOV DL, ","
      INT 21H   
      MOV DL, " "
      INT 21H   
      INC SI
LOOP LOOP2       
ret
ARR1 DB 0,1,?,?,?,?,?,?,?,?,?

STR1 DB "Enter the Range: $"  
STR2 DB "Fib Series: $"



