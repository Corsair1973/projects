// Sprite bitmaps 1 x 64 ..bytes
*=$900 "sprite0"
//$24 *=$0900
//Sprite #21 Holding gun LEFT
// Multicolor mode, BG color: 0, Sprite color: 15, multicolor1: 5, multicolor2: 7
	.byte $00, $00, $00
	.byte $00, $02, $00
	.byte $00, $08, $00
	.byte $00, $2A, $00
	.byte $00, $A8, $00
	.byte $00, $08, $00
	.byte $00, $04, $00
	.byte $0C, $35, $00
	.byte $3F, $19, $80
	.byte $22, $19, $20
	.byte $03, $A5, $80
	.byte $00, $15, $00
	.byte $00, $04, $00
	.byte $00, $04, $00
	.byte $00, $22, $00
	.byte $00, $22, $00
	.byte $00, $20, $80
	.byte $00, $20, $80
	.byte $00, $80, $80
	.byte $00, $80, $80
	.byte $02, $82, $80, $00

//$25 *=$0940
// Sprite #22 Firing LEFT
// Multicolor mode, BG color: 0, Sprite color: 15, multicolor1: 5, multicolor2: 7
	.byte $00, $00, $00
	.byte $00, $20, $00
	.byte $00, $08, $00
	.byte $00, $2A, $00
	.byte $30, $A8, $00
	.byte $2C, $08, $00
	.byte $03, $04, $80
	.byte $02, $35, $20
	.byte $03, $99, $80
	.byte $00, $29, $00
	.byte $00, $15, $00
	.byte $00, $15, $00
	.byte $00, $04, $00
	.byte $00, $04, $00
	.byte $00, $22, $00
	.byte $00, $22, $00
	.byte $00, $20, $80
	.byte $00, $20, $80
	.byte $00, $80, $80
	.byte $00, $80, $80
	.byte $02, $82, $80, $00


//$26 *=$0980
// Sprite #23 Holding gun RIGHT
// Multicolor mode, BG color: 0, Sprite color: 15, multicolor1: 5, multicolor2: 7
	.byte $00, $00, $00
	.byte $00, $80, $00
	.byte $00, $20, $00
	.byte $00, $A8, $00
	.byte $00, $2A, $00
	.byte $00, $20, $00
	.byte $00, $10, $00
	.byte $00, $5C, $30
	.byte $02, $64, $FC
	.byte $08, $64, $88
	.byte $02, $5A, $C0
	.byte $00, $54, $00
	.byte $00, $10, $00
	.byte $00, $10, $00
	.byte $00, $88, $00
	.byte $00, $88, $00
	.byte $02, $08, $00
	.byte $02, $08, $00
	.byte $02, $02, $00
	.byte $02, $02, $00
	.byte $02, $82, $80, $00 
//$27 *=$09c0
// Sprite #24 Firing LEFT
// Multicolor mode, BG color: 0, Sprite color: 15, multicolor1: 5, multicolor2: 7
    .byte $00, $00, $00
	.byte $00, $08, $00
	.byte $00, $20, $00
	.byte $00, $A8, $00
	.byte $00, $2A, $0C
	.byte $00, $20, $38
	.byte $02, $10, $C0
	.byte $08, $5C, $80
	.byte $02, $66, $C0
	.byte $00, $68, $00
	.byte $00, $54, $00
	.byte $00, $54, $00
	.byte $00, $10, $00
	.byte $00, $10, $00
	.byte $00, $88, $00
	.byte $00, $88, $00
	.byte $02, $08, $00
	.byte $02, $08, $00
	.byte $02, $02, $00
	.byte $02, $02, $00
	.byte $02, $82, $80, $00
 
//*=$0A00 "Sprites"
// sprite #0
//	.byte $00, $00, $00, $00, $80, $00, $00, $20, $00, $00, $A8, $00, $00, $2A, $00, $00, $20, $00, $00, $10, $00
//	.byte $02, $DE, $00, $08, $54, $80, $08, $54, $80, $08, $54, $80, $00, $54, $80, $00, $10, $00, $00, $10, $00
//	.byte $00, $88, $00, $00, $88, $00, $00, $88, $00, $02, $02, $00, $02, $02, $00, $02, $02, $00, $0A, $02, $80
//	.byte 0

// Sprite #1 sprite pointer $28  *=$0A00
// Multicolor mode, BG color: 0, Sprite color: 15, multicolor1: 5, multicolor2: 7
	.byte $00, $00, $00
	.byte $00, $80, $00
	.byte $00, $20, $00
	.byte $00, $A8, $00
	.byte $00, $2A, $00
	.byte $00, $20, $00
	.byte $00, $10, $00
	.byte $02, $DE, $00
	.byte $08, $54, $80
	.byte $08, $54, $80
	.byte $08, $54, $80
	.byte $00, $54, $80
	.byte $00, $10, $00
	.byte $00, $10, $00
	.byte $00, $88, $00
	.byte $00, $88, $00
	.byte $00, $88, $00
	.byte $02, $02, $00
	.byte $02, $02, $00
	.byte $02, $02, $00
	.byte $0A, $02, $80, $00

// Sprite #2  $29 *=$0A40
// Multicolor mode, BG color : 0, Sprite color: 15, multicolor1: 5, multicolor2: 7
	.byte $00, $00, $00
	.byte $00, $88, $00
	.byte $00, $20, $00
	.byte $00, $A0, $00
	.byte $02, $A0, $00
	.byte $00, $20, $00
	.byte $00, $10, $00
	.byte $02, $DE, $00
	.byte $08, $54, $80
	.byte $08, $54, $80
	.byte $08, $56, $00
	.byte $08, $58, $00
	.byte $00, $10, $00
	.byte $00, $10, $00
	.byte $00, $88, $00
	.byte $00, $88, $00
	.byte $00, $88, $00
	.byte $02, $02, $00
	.byte $02, $02, $00
	.byte $02, $02, $00
	.byte $0A, $0A, $00,  $00

// Sprite #3 $2A *=$0A80
// Multicolor mode, BG color: 0, Sprite color: 15, multicolor1: 5, multicolor2: 7
	.byte $00, $00, $00
	.byte $00, $80, $00
	.byte $00, $20, $00
	.byte $00, $A8, $00
	.byte $00, $2A, $00
	.byte $00, $20, $00
	.byte $00, $10, $00
	.byte $00, $5C, $00
	.byte $02, $64, $00
	.byte $08, $64, $80
	.byte $02, $5A, $00
	.byte $00, $54, $00
	.byte $00, $10, $00
	.byte $00, $10, $00
	.byte $00, $88, $00
	.byte $00, $88, $00
	.byte $02, $08, $00
	.byte $02, $08, $00
	.byte $02, $02, $00
	.byte $02, $02, $00
	.byte $02, $82, $80,  $00

// Sprite #4 $2B *=$0Ac0
// Multicolor mode, BG color: 0, Sprite color: 15, multicolor1: 5, multicolor2: 7
	.byte $00, $00, $00
	.byte $00, $20, $00
	.byte $00, $20, $00
	.byte $00, $A8, $00
	.byte $00, $2A, $00
	.byte $00, $20, $00
	.byte $00, $10, $00
	.byte $00, $5C, $00
	.byte $02, $64, $80
	.byte $08, $6A, $00
	.byte $08, $54, $00
	.byte $02, $54, $00
	.byte $00, $10, $00
	.byte $00, $10, $00
	.byte $00, $88, $00
	.byte $00, $88, $00
	.byte $02, $08, $00
	.byte $02, $08, $00
	.byte $08, $08, $00
	.byte $08, $08, $00
	.byte $0A, $0A, $00,  $00

// Sprite #5 $2C *=$0B00
// Multicolor mode, BG color: 0, Sprite color: 15, multicolor1: 5, multicolor2: 7
	.byte $00, $00, $00
	.byte $00, $08, $00
	.byte $00, $20, $00
	.byte $00, $A8, $00
	.byte $00, $2A, $00
	.byte $00, $20, $00
	.byte $00, $10, $00
	.byte $00, $5C, $00
	.byte $02, $66, $00
	.byte $08, $6A, $00
	.byte $08, $54, $00
	.byte $08, $54, $00
	.byte $00, $10, $00
	.byte $00, $10, $00
	.byte $00, $88, $00
	.byte $00, $88, $00
	.byte $02, $08, $00
	.byte $2A, $08, $00
	.byte $20, $20, $00
	.byte $20, $20, $00
	.byte $00, $28, $00,  $00

// Sprite #6 $2D *=$0B40
// Multicolor mode, BG color: 0, Sprite color: 15, multicolor1: 5, multicolor2: 7
	.byte $00, $00, $00
	.byte $00, $20, $00
	.byte $00, $20, $00
	.byte $00, $A8, $00
	.byte $00, $2A, $00
	.byte $00, $20, $00
	.byte $00, $10, $00
	.byte $00, $5C, $00
	.byte $02, $64, $00
	.byte $08, $68, $00
	.byte $08, $5A, $00
	.byte $20, $54, $00
	.byte $00, $10, $00
	.byte $00, $10, $00
	.byte $28, $88, $00
	.byte $22, $88, $00
	.byte $20, $08, $00
	.byte $00, $28, $00
	.byte $00, $A0, $00
	.byte $00, $80, $00
	.byte $00, $A0, $00, $00

// Sprite #7 $2E *=$0B80
// Multicolor mode, BG color: 0, Sprite color: 15, multicolor1: 5, multicolor2: 7
	.byte $00, $00, $00
	.byte $00, $80, $00
	.byte $00, $20, $00
	.byte $00, $A8, $00
	.byte $00, $2A, $00
	.byte $00, $20, $00
	.byte $00, $10, $00
	.byte $00, $5C, $00
	.byte $02, $64, $00
	.byte $08, $94, $00
	.byte $08, $64, $00
	.byte $08, $58, $00
	.byte $00, $10, $00
	.byte $08, $10, $00
	.byte $28, $88, $00
	.byte $88, $88, $00
	.byte $02, $20, $00
	.byte $00, $20, $00
	.byte $00, $80, $00
	.byte $00, $80, $00
	.byte $00, $A0, $00, $00

// Sprite #8 $2F *=$0BC0
// Multicolor mode, BG color: 0, Sprite color: 15, multicolor1: 5, multicolor2: 7
	.byte $00, $00, $00
	.byte $00, $20, $00
	.byte $00, $20, $00
	.byte $00, $A8, $00
	.byte $00, $2A, $00
	.byte $00, $20, $00
	.byte $00, $10, $00
	.byte $00, $5C, $00
	.byte $02, $64, $00
	.byte $08, $94, $00
	.byte $02, $64, $00
	.byte $00, $64, $00
	.byte $00, $10, $00
	.byte $00, $10, $00
	.byte $00, $88, $00
	.byte $0A, $88, $00
	.byte $0A, $20, $00
	.byte $20, $20, $00
	.byte $02, $80, $00
	.byte $02, $00, $00
	.byte $02, $00, $00,  $00

// Sprite #9 $30 *=$0C00
// Multicolor mode, BG color: 0, Sprite color: 15, multicolor1: 5, multicolor2: 7
	.byte $00, $00, $00
	.byte $00, $08, $00
	.byte $00, $20, $00
	.byte $00, $A8, $00
	.byte $00, $2A, $00
	.byte $00, $20, $00
	.byte $00, $10, $00
	.byte $00, $5C, $00
	.byte $02, $64, $00
	.byte $02, $94, $00
	.byte $00, $96, $00
	.byte $00, $94, $00
	.byte $00, $20, $00
	.byte $00, $10, $00
	.byte $00, $A0, $00
	.byte $00, $A0, $00
	.byte $00, $A0, $00
	.byte $00, $80, $00
	.byte $02, $88, $00
	.byte $02, $20, $00
	.byte $02, $00, $00,  $00

// Sprite #10 $31 *=$0C40
// Multicolor mode, BG color: 0, Sprite color: 15, multicolor1: 5, multicolor2: 7
	.byte $00, $00, $00
	.byte $00, $20, $00
	.byte $00, $20, $00
	.byte $00, $A8, $00
	.byte $00, $2A, $00
	.byte $00, $20, $00
	.byte $00, $10, $00
	.byte $00, $5C, $00
	.byte $00, $64, $80
	.byte $00, $96, $00
	.byte $02, $54, $00
	.byte $02, $54, $00
	.byte $00, $10, $00
	.byte $00, $10, $00
	.byte $00, $A0, $00
	.byte $00, $88, $00
	.byte $00, $88, $00
	.byte $02, $08, $00
	.byte $0A, $20, $00
	.byte $08, $20, $00
	.byte $08, $28, $00,  $00

// Sprite #11 $32 *=$0C80
// Multicolor mode, BG color: 0, Sprite color: 15, multicolor1: 5, multicolor2: 7
	.byte $00, $00, $00
	.byte $00, $80, $00
	.byte $00, $20, $00
	.byte $00, $A8, $00
	.byte $00, $2A, $00
	.byte $00, $20, $00
	.byte $00, $10, $00
	.byte $00, $5C, $00
	.byte $02, $64, $00
	.byte $08, $64, $00
	.byte $02, $94, $00
	.byte $00, $A4, $00
	.byte $00, $10, $00
	.byte $00, $10, $00
	.byte $00, $88, $00
	.byte $00, $88, $00
	.byte $02, $08, $00
	.byte $02, $08, $00
	.byte $08, $08, $00
	.byte $08, $08, $00
	.byte $0A, $0A, $00,  $00

// Sprite #12 $33 *=$0CC0
// Multicolor mode, BG color: 0, Sprite color: 15, multicolor1: 5, multicolor2: 7
	.byte $00, $00, $00
	.byte $00, $20, $00
	.byte $00, $08, $00
	.byte $00, $2A, $00
	.byte $00, $A8, $00
	.byte $00, $08, $00
	.byte $00, $04, $00
	.byte $00, $35, $00
	.byte $00, $99, $80
	.byte $00, $A9, $20
	.byte $00, $15, $20
	.byte $00, $15, $20
	.byte $00, $04, $00
	.byte $00, $04, $00
	.byte $00, $22, $00
	.byte $00, $22, $00
	.byte $00, $20, $80
	.byte $00, $20, $A8
	.byte $00, $08, $08
	.byte $00, $08, $08
	.byte $00, $28, $00, $00

// Sprite #13 $34 *=$0D00
// Multicolor mode, BG color: 0, Sprite color: 15, multicolor1: 5, multicolor2: 7
	.byte $00, $00, $00
	.byte $00, $08, $00
	.byte $00, $08, $00
	.byte $00, $2A, $00
	.byte $00, $A8, $00
	.byte $00, $08, $00
	.byte $00, $04, $00
	.byte $00, $35, $00
	.byte $00, $19, $80
	.byte $00, $29, $20
	.byte $00, $A5, $20
	.byte $00, $15, $08
	.byte $00, $04, $00
	.byte $00, $04, $00
	.byte $00, $22, $28
	.byte $00, $22, $88
	.byte $00, $20, $08
	.byte $00, $28, $00
	.byte $00, $0A, $00
	.byte $00, $02, $00
	.byte $00, $0A, $00, $00

// Sprite #14 $35 *=$0D40
// Multicolor mode, BG color: 0, Sprite color: 15, multicolor1: 5, multicolor2: 7
	.byte $00, $00, $00
	.byte $00, $02, $00
	.byte $00, $08, $00
	.byte $00, $2A, $00
	.byte $00, $A8, $00
	.byte $00, $08, $00
	.byte $00, $04, $00
	.byte $00, $35, $00
	.byte $00, $19, $80
	.byte $00, $16, $20
	.byte $00, $19, $20
	.byte $00, $25, $20
	.byte $00, $04, $00
	.byte $00, $04, $20
	.byte $00, $22, $28
	.byte $00, $22, $22
	.byte $00, $08, $80
	.byte $00, $08, $00
	.byte $00, $02, $00
	.byte $00, $02, $00
	.byte $00, $0A, $00, $00

// Sprite #15 $36 *=$0D80
// Multicolor mode, BG color: 0, Sprite color: 15, multicolor1: 5, multicolor2: 7
	.byte $00, $00, $00
	.byte $00, $08, $00
	.byte $00, $08, $00
	.byte $00, $2A, $00
	.byte $00, $A8, $00
	.byte $00, $08, $00
	.byte $00, $04, $00
	.byte $00, $35, $00
	.byte $00, $19, $80
	.byte $00, $16, $20
	.byte $00, $19, $80
	.byte $00, $19, $00
	.byte $00, $04, $00
	.byte $00, $04, $00
	.byte $00, $22, $00
	.byte $00, $22, $A0
	.byte $00, $08, $A0
	.byte $00, $08, $08
	.byte $00, $02, $80
	.byte $00, $00, $80
	.byte $00, $00, $80, $00

// Sprite #16 $37 *=$0DC0
// Multicolor mode, BG color: 0, Sprite color: 15, multicolor1: 5, multicolor2: 7
	.byte $00, $00, $00
	.byte $00, $20, $00
	.byte $00, $08, $00
	.byte $00, $2A, $00
	.byte $00, $A8, $00
	.byte $00, $08, $00
	.byte $00, $04, $00
	.byte $00, $35, $00
	.byte $00, $19, $80
	.byte $00, $16, $80
	.byte $00, $96, $00
	.byte $00, $16, $00
	.byte $00, $08, $00
	.byte $00, $04, $00
	.byte $00, $0A, $00
	.byte $00, $0A, $00
	.byte $00, $0A, $00
	.byte $00, $02, $00
	.byte $00, $22, $80
	.byte $00, $08, $80
	.byte $00, $00, $80, $00

// Sprite #17 $38 *=$0E00
// Multicolor mode, BG color: 0, Sprite color: 15, multicolor1: 5, multicolor2: 7
	.byte $00, $00, $00
	.byte $00, $08, $00
	.byte $00, $08, $00
	.byte $00, $2A, $00
	.byte $00, $A8, $00
	.byte $00, $08, $00
	.byte $00, $04, $00
	.byte $00, $35, $00
	.byte $02, $19, $00
	.byte $00, $96, $00
	.byte $00, $15, $80
	.byte $00, $15, $80
	.byte $00, $04, $00
	.byte $00, $04, $00
	.byte $00, $0A, $00
	.byte $00, $22, $00
	.byte $00, $22, $00
	.byte $00, $20, $80
	.byte $00, $08, $A0
	.byte $00, $08, $20
	.byte $00, $28, $20, $00


// Sprite standing looking right
// $39 *=$0E40
// Multicolor mode, BG color: 0, Sprite color: 15, multicolor1: 5, multicolor2: 7
	.byte $00, $00, $00
	.byte $00, $80, $00
	.byte $00, $20, $00
	.byte $00, $A8, $00
	.byte $00, $2A, $00
	.byte $00, $20, $00
	.byte $00, $10, $00
	.byte $02, $DE, $00
	.byte $08, $54, $80
	.byte $08, $54, $80
	.byte $08, $54, $80
	.byte $00, $54, $80
	.byte $00, $10, $00
	.byte $00, $10, $00
	.byte $00, $88, $00
	.byte $00, $88, $00
	.byte $00, $88, $00
	.byte $02, $02, $00
	.byte $02, $02, $00
	.byte $02, $02, $00
	.byte $0A, $02, $80, $00
// Sprite standing looking left
// $3A *=$0E80
// Multicolor mode, BG color: 0, Sprite color: 15, multicolor1: 5, multicolor2: 7
	.byte $00, $00, $00
	.byte $00, $88, $00
	.byte $00, $20, $00
	.byte $00, $A0, $00
	.byte $02, $A0, $00
	.byte $00, $20, $00
	.byte $00, $10, $00
	.byte $02, $DE, $00
	.byte $08, $54, $80
	.byte $08, $54, $80
	.byte $08, $56, $00
	.byte $08, $58, $00
	.byte $00, $10, $00
	.byte $00, $10, $00
	.byte $00, $88, $00
	.byte $00, $88, $00
	.byte $00, $88, $00
	.byte $02, $02, $00
	.byte $02, $02, $00
	.byte $02, $02, $00
	.byte $0A, $0A, $00, $00

// $3B *=$0EC0
// Sprite Jumping Right
// Multicolor mode, BG color: 0, Sprite color: 15, multicolor1: 5, multicolor2: 7
	.byte $00, $00, $00
	.byte $00, $00, $00
	.byte $00, $8A, $00
	.byte $00, $28, $00
	.byte $00, $A0, $00
	.byte $00, $20, $00
	.byte $00, $10, $00
	.byte $00, $5C, $00
	.byte $02, $64, $00
	.byte $08, $94, $00
	.byte $02, $64, $00
	.byte $00, $64, $00
	.byte $00, $10, $00
	.byte $00, $10, $00
	.byte $00, $88, $00
	.byte $02, $88, $00
	.byte $0A, $20, $00
	.byte $20, $20, $00
	.byte $22, $80, $00
	.byte $02, $00, $00
	.byte $02, $00, $00, $00

// $3C *=$0F00
    // Sprite Landing Right
// Multicolor mode, BG color: 0, Sprite color: 15, multicolor1: 5, multicolor2: 7
	.byte $00, $00, $00
	.byte $00, $00, $00
	.byte $00, $80, $00
	.byte $00, $28, $00
	.byte $00, $A8, $00
	.byte $00, $22, $00
	.byte $00, $10, $00
	.byte $00, $5C, $00
	.byte $02, $64, $00
	.byte $08, $94, $00
	.byte $02, $64, $00
	.byte $00, $64, $00
	.byte $00, $10, $00
	.byte $00, $10, $00
	.byte $00, $88, $00
	.byte $00, $88, $00
	.byte $00, $22, $00
	.byte $00, $22, $20
	.byte $00, $80, $80
	.byte $00, $80, $80
	.byte $00, $20, $00, $00

// $3D *=$0F40
// Sprite Jumping Left
// Multicolor mode, BG color: 0, Sprite color: 15, multicolor1: 5, multicolor2: 7
	.byte $00, $00, $00
	.byte $00, $00, $00
	.byte $00, $A2, $00
	.byte $00, $28, $00
	.byte $00, $0A, $00
	.byte $00, $08, $00
	.byte $00, $04, $00
	.byte $00, $35, $00
	.byte $00, $19, $80
	.byte $00, $16, $20
	.byte $00, $19, $80
	.byte $00, $19, $00
	.byte $00, $04, $00
	.byte $00, $04, $00
	.byte $00, $22, $00
	.byte $00, $22, $80
	.byte $00, $08, $A0
	.byte $00, $08, $08
	.byte $00, $02, $88
	.byte $00, $00, $80
	.byte $00, $00, $80, $00

// $3E *=$0F80
// Sprite Landing Left
// Multicolor mode, BG color: 0, Sprite color: 15, multicolor1: 5, multicolor2: 7
	.byte $00, $00, $00
	.byte $00, $00, $00
	.byte $00, $02, $00
	.byte $00, $28, $00
	.byte $00, $2A, $00
	.byte $00, $88, $00
	.byte $00, $04, $00
	.byte $00, $35, $00
	.byte $00, $19, $80
	.byte $00, $16, $20
	.byte $00, $19, $80
	.byte $00, $19, $00
	.byte $00, $04, $00
	.byte $00, $04, $00
	.byte $00, $22, $00
	.byte $00, $22, $00
	.byte $00, $88, $00
	.byte $08, $88, $00
	.byte $02, $02, $00
	.byte $02, $02, $00
	.byte $00, $08, $00, $00

//$3F *=$0FC0
//Sprite #21 Holding gun LEFT
// Multicolor mode, BG color: 0, Sprite color: 15, multicolor1: 5, multicolor2: 7
	.byte $00, $00, $00
	.byte $00, $02, $00
	.byte $00, $08, $00
	.byte $00, $2A, $00
	.byte $00, $A8, $00
	.byte $00, $08, $00
	.byte $00, $04, $00
	.byte $0C, $35, $00
	.byte $3F, $19, $80
	.byte $22, $19, $20
	.byte $03, $A5, $80
	.byte $00, $15, $00
	.byte $00, $04, $00
	.byte $00, $04, $00
	.byte $00, $22, $00
	.byte $00, $22, $00
	.byte $00, $20, $80
	.byte $00, $20, $80
	.byte $00, $80, $80
	.byte $00, $80, $80
	.byte $02, $82, $80, $00

//$40 *=$1000
// Sprite #22 Firing LEFT
// Multicolor mode, BG color: 0, Sprite color: 15, multicolor1: 5, multicolor2: 7
	.byte $00, $00, $00
	.byte $00, $20, $00
	.byte $00, $08, $00
	.byte $00, $2A, $00
	.byte $30, $A8, $00
	.byte $2C, $08, $00
	.byte $03, $04, $80
	.byte $02, $35, $20
	.byte $03, $99, $80
	.byte $00, $29, $00
	.byte $00, $15, $00
	.byte $00, $15, $00
	.byte $00, $04, $00
	.byte $00, $04, $00
	.byte $00, $22, $00
	.byte $00, $22, $00
	.byte $00, $20, $80
	.byte $00, $20, $80
	.byte $00, $80, $80
	.byte $00, $80, $80
	.byte $02, $82, $80, $00




