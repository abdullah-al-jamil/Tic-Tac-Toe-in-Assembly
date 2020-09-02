.MODEL SMALL
.STACK 100H

.DATA

PL1 DB '-----::PLAYER 1::------ $' 
PL2 DB '-----::PLAYER 2::------ $'
TAKEN DB 'THIS PLACE IS TAKEN $'
INVALID DB '  !!INVALID INPUT!! $'
TRY DB 'TRY AGAIN $'
INPUT DB 'ENTER A INPUT "1"..."9": $'
N1 DB 49  
N2 DB 50  
N3 DB 51  
N4 DB 52  
N5 DB 53  
N6 DB 54  
N7 DB 55  
N8 DB 56  
N9 DB 57  
UNDER_LINE1 DB '----------- $'   
NEWL DB 10, 13, '$'
WIN1 DB 'PLAYER 1 WIN THE GAME!!! $' 
WIN2 DB 'PLAYER 2 WIN THE GAME!!! $'
DARI DB ' | $'
TIEE DB 'MATCH TIE $'

.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    MOV DI, 00 
    
    OUTPUT:
    ;;FIRST LINE
    MOV BL, N1
    
    MOV AH, 2
    MOV DL, BL
    INT 21H
    
    LEA DX, DARI
    MOV AH, 9
    INT 21H
    
    MOV BL, N2
    
    MOV AH, 2
    MOV DL, BL
    INT 21H
    
    LEA DX, DARI
    MOV AH, 9
    INT 21H
    MOV BL, N3
    
    MOV AH, 2
    MOV DL, BL
    INT 21H
    
    LEA DX, DARI
    MOV AH, 9
    INT 21H
    
    LEA DX, NEWL
    MOV AH, 9
    INT 21H
    
    LEA DX, UNDER_LINE1
    MOV AH, 9
    INT 21H
    
    LEA DX, NEWL
    MOV AH, 9
    INT 21H 
    
    
    ;;SECOND LINE
    MOV BL, N4
    
    MOV AH, 2
    MOV DL, BL
    INT 21H
    
    LEA DX, DARI
    MOV AH, 9
    INT 21H
    
    MOV BL, N5
    
    MOV AH, 2
    MOV DL, BL
    INT 21H
    
    LEA DX, DARI
    MOV AH, 9
    INT 21H
    MOV BL, N6
    
    MOV AH, 2
    MOV DL, BL
    INT 21H
    
    LEA DX, DARI
    MOV AH, 9
    INT 21H
    
    LEA DX, NEWL
    MOV AH, 9
    INT 21H
    
    LEA DX, UNDER_LINE1
    MOV AH, 9
    INT 21H
    
    
    
    LEA DX, NEWL
    MOV AH, 9
    INT 21H
    
    ;;THIRD LINE
    MOV BL, N7
    
    MOV AH, 2
    MOV DL, BL
    INT 21H
    
    LEA DX, DARI
    MOV AH, 9
    INT 21H
    
    MOV BL, N8
    
    MOV AH, 2
    MOV DL, BL
    INT 21H
    
    LEA DX, DARI
    MOV AH, 9
    INT 21H
    MOV BL, N9
    
    MOV AH, 2
    MOV DL, BL
    INT 21H
    
    LEA DX, DARI
    MOV AH, 9
    INT 21H
    
    
    LEA DX, NEWL
    MOV AH, 9
    INT 21H 
    LEA DX, NEWL
    MOV AH, 9
    INT 21H 
    
    CMP CL,98D
    JE WSHOW1 
    
    CMP CL,99D
    JE WSHOW2
    
    CMP DI, 9
    JE TIE
    
    CMP CX, 100D
    JE P2
    
    ;INPUT PLAYER 1
    P1:
    
    MOV CX, 100D
    
    LEA DX, PL1
    MOV AH, 9
    INT 21H
    LEA DX, NEWL
    MOV AH, 9
    INT 21H
    
    LEA DX, INPUT
    MOV AH, 9
    INT 21H
   
    MOV AH, 1
    INT 21H
    MOV BL, AL
    LEA DX, NEWL
    MOV AH, 9
    INT 21H
    
    LEA DX, NEWL
    MOV AH, 9
    INT 21H 
    
    CMP BL,49D
    JB INVALIDINPUT
    
    CMP BL,57D
    JA INVALIDINPUT
    
    CMP BL,N1
    JE ONE
    
    CMP BL,N2
    JE TWO
    CMP BL,N3
    JE THREE
    CMP BL,N4
    JE FOUR
    CMP BL,N5
    JE FIVE
    CMP BL,N6
    JE SIX
    CMP BL,N7
    JE SEVEN
    CMP BL,N8
    JE EIGHT
    CMP BL,N9
    JE NINE
           
    ONE:
    CMP N1,88D
    JE TAKEN1
    CMP N1,79D
    JE TAKEN1 
    
    INC DI
    
    MOV N1, 88D
    JMP CHECK1
    
    TWO:
    CMP N2,88D
    JE TAKEN1
    CMP N2,79D
    JE TAKEN1
    INC DI 
    MOV N2, 88D
    JMP CHECK1
     
    THREE:
    CMP N3,88D
    JE TAKEN1
    CMP N3,79D
    JE TAKEN1
    INC DI 
    MOV N3, 88D
    JMP CHECK1 
    
    FOUR:
    CMP N4,88D
    JE TAKEN1
    CMP N4,79D
    JE TAKEN1 
    INC DI
    MOV N4, 88D
    JMP CHECK1
    
    FIVE:
    CMP N5,88D
    JE TAKEN1
    CMP N5,79D
    JE TAKEN1 
    INC DI
    MOV N5, 88D
    JMP CHECK1
    
    SIX:  
    CMP N6,88D
    JE TAKEN1
    CMP N6,79D
    JE TAKEN1 
    INC DI
    MOV N6, 88D
    JMP CHECK1
    
    SEVEN:
    CMP N7,88D
    JE TAKEN1
    CMP N7,79D
    JE TAKEN1 
    INC DI
    MOV N7, 88D
    JMP CHECK1
    
    EIGHT:
    CMP N8,88D
    JE TAKEN1
    CMP N8,79D
    JE TAKEN1 
    INC DI
    MOV N8, 88D
    JMP CHECK1
    
    NINE:
    CMP N9,88D
    JE TAKEN1
    CMP N9,79D
    JE TAKEN1 
    INC DI
    MOV N9, 88D
    JMP CHECK1
    
    
    ;INPUT PLAYER 2
    P2:
    
    MOV CX, 101D
    
    LEA DX, PL2
    MOV AH, 9
    INT 21H
    LEA DX, NEWL
    MOV AH, 9
    INT 21H
    
    LEA DX, INPUT
    MOV AH, 9
    INT 21H
   
    MOV AH, 1
    INT 21H
    MOV BL, AL
    LEA DX, NEWL
    MOV AH, 9
    INT 21H
     
    LEA DX, NEWL
    MOV AH, 9
    INT 21H   
    
    CMP BL,49D
    JB INVALIDINPUT
    
    CMP BL,57D
    JA INVALIDINPUT
    
    CMP BL,N1
    JE ONE2
    
    CMP BL,N2
    JE TWO2
    CMP BL,N3
    JE THREE2
    CMP BL,N4
    JE FOUR2
    CMP BL,N5
    JE FIVE2
    CMP BL,N6
    JE SIX2
    CMP BL,N7
    JE SEVEN2
    CMP BL,N8
    JE EIGHT2
    CMP BL,N9
    JE NINE2
           
    ONE2:
    CMP N1,88D
    JE TAKEN2
    CMP N1,79D
    JE TAKEN2 
    INC DI
    MOV N1, 79D
    JMP CHECK9
    
    TWO2: 
    CMP N2,88D
    JE TAKEN2
    CMP N2,79D
    JE TAKEN2 
    INC DI
    MOV N2, 79D
    JMP CHECK9
     
    THREE2:
    
    CMP N3,88D
    JE TAKEN2
    CMP N3,79D
    JE TAKEN2
    INC DI 
    MOV N3, 79D
    JMP CHECK9 
    
    FOUR2:
    CMP N4,88D
    JE TAKEN2
    CMP N4,79D
    JE TAKEN2 
    INC DI
    MOV N4, 79D
    JMP CHECK9
    
    FIVE2:
    CMP N5,88D
    JE TAKEN2
    CMP N5,79D
    JE TAKEN2
    INC DI 
    MOV N5, 79D
    JMP CHECK9
    
    SIX2:
    CMP N6,88D
    JE TAKEN2
    CMP N6,79D
    JE TAKEN2 
    INC DI
    MOV N6, 79D
    JMP CHECK9
    
    SEVEN2:
    CMP N7,88D
    JE TAKEN2
    CMP N7,79D
    JE TAKEN2 
    INC DI
    MOV N7, 79D
    JMP CHECK9
    
    EIGHT2:
    CMP N8,88D
    JE TAKEN2
    CMP N8,79D
    JE TAKEN2 
    INC DI
    MOV N8, 79D
    JMP CHECK9
    
    NINE2:
    CMP N9,88D
    JE TAKEN2
    CMP N9,79D
    JE TAKEN2 
    INC DI
    MOV N9, 79D
    JMP CHECK9
    
    
    CHECK1:
    CMP N1, 'X'
    JNE CHECK2
    CMP N2, 'X'
    JNE CHECK2 
    CMP N3, 'X'
    JE WINP1  
    
     CHECK2:
    CMP N4, 'X'
    JNE CHECK3
    CMP N5, 'X'
    JNE CHECK3 
    CMP N6, 'X'
    JE WINP1 
    
     CHECK3:
    CMP N7, 'X'
    JNE CHECK4
    CMP N8, 'X'
    JNE CHECK4 
    CMP N9, 'X'
    JE WINP1
    
     CHECK4:
    CMP N1, 'X'
    JNE CHECK5
    CMP N4, 'X'
    JNE CHECK5 
    CMP N7, 'X'
    JE WINP1
    
     CHECK5:
    CMP N2, 'X'
    JNE CHECK6
    CMP N5, 'X'
    JNE CHECK6 
    CMP N8, 'X'
    JE WINP1
    
     CHECK6:
    CMP N3, 'X'
    JNE CHECK7
    CMP N6, 'X'
    JNE CHECK7 
    CMP N9, 'X'
    JE WINP1
    
     CHECK7:
    CMP N1, 'X'
    JNE CHECK8
    CMP N5, 'X'
    JNE CHECK8 
    CMP N9, 'X'
    JE WINP1
    
     CHECK8:
    CMP N3, 'X'
    JNE OUTPUT
    CMP N5, 'X'
    JNE OUTPUT 
    CMP N7, 'X'
    JE WINP1
    
    JMP OUTPUT
    
    CHECK9:
    CMP N1, 'O'
    JNE CHECK10
    CMP N2, 'O'
    JNE CHECK10 
    CMP N3, 'O'
    JE WINP2  
    
     CHECK10:
    CMP N4, 'O'
    JNE CHECK11
    CMP N5, 'O'
    JNE CHECK11 
    CMP N6, 'O'
    JE WINP2 
    
     CHECK11:
    CMP N7, 'O'
    JNE CHECK12
    CMP N8, 'O'
    JNE CHECK12 
    CMP N9, 'O'
    JE WINP2
    
     CHECK12:
    CMP N1, 'O'
    JNE CHECK13
    CMP N4, 'O'
    JNE CHECK13 
    CMP N7, 'O'
    JE WINP2
    
     CHECK13:
    CMP N2, 'O'
    JNE CHECK14
    CMP N5, 'O'
    JNE CHECK14 
    CMP N8, 'O'
    JE WINP2
    
     CHECK14:
    CMP N3, 'O'
    JNE CHECK15
    CMP N6, 'O'
    JNE CHECK15 
    CMP N9, 'O'
    JE WINP2
    
     CHECK15:
    CMP N1, 'O'
    JNE CHECK16
    CMP N5, 'O'
    JNE CHECK16 
    CMP N9, 'O'
    JE WINP2
    
     CHECK16:
    CMP N3, 'O'
    JNE OUTPUT
    CMP N5, 'O'
    JNE OUTPUT 
    CMP N7, 'O'
    JE WINP2
    
    JMP OUTPUT
    
    WINP1:
    
    MOV CL, 98D
    JMP OUTPUT
    WSHOW1:
    LEA DX, WIN1
    MOV AH, 9
    INT 21H
    
    JMP EXIT
    
    INVALIDINPUT:
    LEA DX, INVALID
    MOV AH, 9
    INT 21H
    
    LEA DX, NEWL
    MOV AH, 9
    INT 21H
    
    CMP CX, 100D
    JE P1
    JMP P2
    
    TAKEN1:
    MOV AH, 2
    MOV DL, 2
    INT 21H
    
    LEA DX, TAKEN
    MOV AH, 9
    INT 21H
    
    LEA DX, NEWL
    MOV AH, 9
    INT 21H
    
    JMP P1 
    
     TAKEN2:
    MOV AH, 2
    MOV DL, 2
    INT 21H
    
    LEA DX, TAKEN
    MOV AH, 9
    INT 21H
    
    LEA DX, NEWL
    MOV AH, 9
    INT 21H
    
    JMP P2
    
    TIE:
    LEA DX, TIEE
    MOV AH, 9
    INT 21H
    
    JMP EXIT 
    
    WINP2:
    
    MOV CL, 99D
    JMP OUTPUT
    WSHOW2:
    LEA DX, WIN2
    MOV AH, 9
    INT 21H
    
    EXIT:
    MOV AH, 4CH
    INT 21H
    MAIN ENDP 
END MAIN