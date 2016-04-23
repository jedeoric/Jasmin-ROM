
*=$f800
eprom_jasmin
    .dsb 1280,$ff
   ;RESET_START
; $fd00
RESET_START	
	SEI             ;
	LDA #$00        ;
	STA $03FA       ;
	LDA #$7f        ;
	STA $030E       ;
	NOP             ;
	NOP             ;
	NOP             ;
	NOP             ;
	NOP             ;
	LDA #$7f        ;
	STA $030E       ;
	LDA #$00        ;
	STA $03FA       ;
	LDY #$20        ;
	DEY             ;
	BEQ $FD2F
	LDA $FD50,Y     ;
	STA $0400,Y     ;
	LDA $0400,Y     ;
	CMP $FD50,Y     ;
	BNE $FD1F	;
	BEQ $FD1C	;
	JMP $0401       ;    
	NOP             ;
	NOP             ;
	NOP             ;
	NOP             ;
	NOP             ;
	NOP             ;
	NOP             ;
	NOP             ;
	NOP             ;
	NOP             ;
	NOP             ;
	NOP             ;
	NOP             ;
	NOP             ;
	NOP             ;
	NOP             ;
	NOP             ;
	NOP             ;
	NOP             ;
	NOP             ;
	NOP             ;
	NOP             ;
	NOP             ;
	NOP             ;
	NOP             ;
	NOP             ;
	NOP             ;
	NOP             ;
	NOP             ;
	NOP             ;
	NOP             ;

	LDA #$7f	;
	STA $030E	;
	LDA #$00	;
	LDY #$08	;
	STA $03F7,Y	;
	DEY		;
	BNE $FD5A	;
	LDA #$01	;
	STA $03FB	;
	SEI		;
    	jmp start
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP			;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP			;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP			;
	NOP			;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP			;
	NOP			;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP			;
;fe000
start
	SEI		;
	LDA #$7f	; Stop VIA
	STA $030E	;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	LDY #$0e	;
loop	
	DEY		;
	CPY #$ff	;
	BEQ $FE1B	;
	LDA $FE63,Y	;
	STA $0400,Y	;
	CLC		;
	BCC $FE0D	;
	LDA #$01	;
	STA $03FC	;
	STA $03F9	;
	LDA #$00	;
	STA $03F4	;
	LDA #$ff	;
	STA $BFE0	;
	STA $BFE1	;
	LDA #$02	;
	STA $BFE2	;
	DEC $BFE0	;
	BNE $FE44	;
	DEC $BFE1	;
	BNE $FE44	;
	DEC $BFE2	;
	BEQ $FE49	;
	NOP		;
	NOP		;
	NOP		;
	BNE $FE35	;
	LDA $03F4	;
	AND #$20	;
	BNE $FE58	;
	LDX #$d2	;
	JSR $FE71	;
	JMP $0400	; Jump to page 4
	LDX #$e1	;
	JSR $FE71	;
	JSR $FEF0	;
	JMP $0400	;
	LDA #$00	;
	STA $03FB	;
	STA $03F9	;
	STA $03FC	;
	JMP ($FFFC)	; JUMP to Reset vector
	LDY #$ff	;
	INX		;
	INY		;
	LDA $FE00,X	;
	BMI $FE7F	;
	STA $BB82,Y	;
	BPL $FE73	;
	AND #$7f	;
	STA $BB82,Y	;
	RTS		;
	LDA $03F4	;
	LSR	;
	BCS $FE85	;
	LDA #$01	;
	STA $03F6	;
	LDA #$8c	;
	STA $03F4	;
	LDY #$00	;
	CLI		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	CLI		;
	LDA $03F4	;
	AND #$01	;
	BNE $FE9E	;
	RTS		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;
	NOP		;    

    .byt  $00,$05,$04,$0b,$02,$0c,$08,$0e,$40,$00,$d0
    .byt  $c0,$ff,$10,$f4,$7f,$ea,$ea,$aa,$ad,$f7,$03,$99,$00,$04,$c8,$8a
    .byt  $40
    .byt $55,$55,$42,$4f,$4f,$54,$49,$4e,$47,$20,$46,$41,$49,$4c,$45
    .byt  $44,$a1,$42,$4f,$4f,$54,$49,$4e,$47,$2e,$2e,$20,$54,$44,$4f,$d3
    .byt  $a9,$20,$8d,$e0,$bf,$ce,$e0,$bf,$f0,$0a,$20,$85,$fe,$a9,$00,$2d
    .byt  $f4,$03,$f0,$03,$4c,$50,$fe,$a9,$1c,$2d,$f4,$03,$d0,$e7,$60,$ff
    .byt  $a9,$35,$8d,$83,$bb,$4c,$00,$04,$ea
    
    
    
    .dsb 128,$ff
	.dsb 97,$ff
    NMI_VECTOR        
    ;.word NMI_START
    .byt  $ff,$ff
RESET_VECTOR ; Boot
    .word RESET_START

IRQ_VECTOR    
    ;.word IRQ_START
	.byt $c7,$fe
    
    
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           