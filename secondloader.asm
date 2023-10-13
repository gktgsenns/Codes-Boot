

;;;;;;;;;;;;;;;;;
;   
;        (C) CoreXenith;
  ; WRITTEN BY A.GOKTUG
;LAST EDIT
;HEADER == BOOT , IDT ,  GDT
;;;;;;;;;;;;;;;;;
ORG 0x7C00

;ROUTINE DESCRIPTION :
;MEM IDT
SECTION .TEXT

    XOR AX, AX
    MOV ES, AX
    MOV BX, 0x0000
    MOV AH, 0x06
    MOV AL, 0x00
    MOV CX, 0x0720
    INT 0x10

    MOV AH, 0x0E
    MOV AL, 'B'
    INT 0x10
    MOV AL, 'O'
    INT 0x10
    MOV AL, 'O'
    INT 0x10
    MOV AL, 'T'
    INT 0x10
    MOV AL, 'L'
    INT 0x10

    MOV AL, 'O'
    INT 0x10

    MOV AL, 'A'
    INT 0x10
    MOV AL, 'D'
    INT 0x10
    MOV AL, 'E'
    INT 0x10
    MOV AL, 'R'
    INT 0x10

    CLI
.LOOP:
    HLT
    JMP .LOOP

TIMES 510-($-$$) DB 0
DW 0xAA55
