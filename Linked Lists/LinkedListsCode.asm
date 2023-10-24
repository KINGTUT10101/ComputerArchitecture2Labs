    ORG $74A8
    DC.L $41414141
    DC.L $000074D0
    DC.L $00000000
    DC.L $00000000
    DC.L $43434343
    DC.L $000074C0
    DC.L $44444444
    DC.L $00000000
    DC.L $00000000
    DC.L $00000000
    DC.L $42424242
    DC.L $000074B8

    ORG    $1000
START:                  ; first instruction of program
    LEA $0074A8,A6
    MOVE.L 4(A6),A1
    MOVE.L 4(A1),A2
    
    LEA.L $000074B0,A5
    MOVE.L A2,4(A5) ; Updates which element A5 points to
    MOVE.L A5,4(A1) ; Updates which element the previous element points to
    
    SIMHALT             ; halt simulator
    END    START        ; last line of source
