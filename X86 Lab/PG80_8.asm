TITLE PG80_8: SUM OF TWO NUMBERS
.MODEL SMALL
.STACK 100H
.DATA
MSG1 DB 0Dh,0Ah,'THE SUM OF $'
MSG2 DB ' AND $'
MSG3 DB ' IS $'
.CODE
MAIN PROC
;initialize DS
    MOV AX,@DATA ;get data segment
    MOV DS,AX ;initialize DS
;display prompt
    MOV AH,2 ;display character function
    MOV DL,'?' ;character is '?'
    INT 21h ;display it
;input a character
    MOV AH,1 ;read character function
    INT 21h ;character in AL
    MOV BL,AL ;save it in BL
    MOV AH,1 ;read character function
    INT 21h ;character in AL
    MOV CL,AL ;save it in CL
;display the first part of message
    LEA DX,MSG1 ;get first message
    MOV AH,9 ;display string function
    INT 21h ;display message
    MOV AH,2 ;display character function
    MOV DL,BL ;character is the one stored in BL
    INT 21h ;display it
    LEA DX,MSG2 ;get second message
    MOV AH,9 ;display string function
    INT 21h ;display it
    MOV AH,2 ;display character function
    MOV DL,CL ;character is the one stored in CL
    INT 21h ;display it
    LEA DX,MSG3 ;get third message
    MOV AH,9 ;display string function
    INT 21h ;display it
;calculate the sum
    SUB BL,30h ;change BL to a right value for calculation
    SUB CL,30h ;change CL to a right value for calculation
    ADD BL,CL ;add the numbers up and store the sum in BL
    ADD BL,30h ;change the result in BL to hex value
;display the result
    MOV AH,2 ;display character function
    MOV DL,BL ;character is the one stored in BL
    INT 21h ;display it
;DOS exit
    MOV AH,4CH
    INT 21h ;DOS exit
MAIN ENDP
    END MAIN