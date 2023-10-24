    ORG    $4AC4
    DC.L 'ABCDEFGHIJ'
    ORG    $4ACE
START:                  ; first instruction of program
    LEA.L $004AC4(PC),A0
    LEA.L 10(A0),A1

    MOVE.B (A0),D0
    MOVE.B -(A1),(A0)+
    MOVE.B D0,(A1)
    
    MOVE.B (A0),D0
    MOVE.B -(A1),(A0)+
    MOVE.B D0,(A1)
    
    MOVE.B (A0),D0
    MOVE.B -(A1),(A0)+
    MOVE.B D0,(A1)
    
    MOVE.B (A0),D0
    MOVE.B -(A1),(A0)+
    MOVE.B D0,(A1)
    
    MOVE.B (A0),D0
    MOVE.B -(A1),(A0)+
    MOVE.B D0,(A1)

    SIMHALT             ; halt simulator
    END    START        ; last line of source