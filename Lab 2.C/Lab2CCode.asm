START:                  ; first instruction of program
    MOVE.L  #$44334241,$00002518
    MOVE.L  #$00000000,$0000251C
    MOVE.L  #$25530000,$00002520
    MOVE.L  #$01EFABCD,$00002524
    MOVE.L  #$5467CC22,$00002528
    MOVE.L  #$FF3412FF,$0000252C
    MOVE.L  #$A2671FEE,$00002544
    MOVE.L  #$FFFFFFFF,$00002548
    MOVE.L  #$01000000,$0000254C
    MOVE.L  #$ABCDFFFF,$00002550
    MOVE.L  #$00000000,$00002554
    
    LEA.L $002468FA,A3
    LEA.L $00002544,A4
    LEA.L $00002518,A6
    
    MOVE.L #$00000000,D3
    MOVE.L #$FFFFFFFF,D5
    MOVE.L #$00000000,D6

    MOVE.B 3(A6),D3
    MOVE.W 4(A4),6(A6)
    MOVE.L (A6)+,D5
    MOVE.W (A4)+,$002522
    MOVE.B $00252E,-(A4)
    LEA.L $00252A,A3
    MOVE.W (A3),D6
    
    SIMHALT             ; halt simulator
    END    START        ; last line of source