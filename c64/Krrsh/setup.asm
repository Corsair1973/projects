*=$2fd0 "setup"
sceenSetUp:
	// set to 25 line text mode and turn on the screen
	lda #$1B
	sta $D011

	// disable SHIFT-Commodore
	lda #$80
	sta $0291

	// set screen memory ($0400) and charset bitmap offset ($2000)
	lda #$18
	sta $D018

	// set border color
	lda #$00
	sta $D020 // border colour register
	
	// set background color
	lda #$00
	sta $D021 //"background" colour register

	// draw screen
	lda #$00
	sta $fb // free zero page
	sta $fd // free zero page
	sta $f7 //  RS232 input buffer, used as free zero page

	lda #$28
	sta $fc // free zero page

	lda #$04
	sta $fe // free zero page

	lda #$e8
	sta $f9 //RS232 output buffer used as free zero page
	lda #$2b
	sta $fa  // Screen link table, used as free zero page

	lda #$d8
	sta $f8 //  RS232 input buffer, used as free zero page

	ldx #$00
	ldy #$00
	lda ($fb),y
	sta ($fd),y
	lda ($f9),y
	sta ($f7),y
	iny
	bne *-9

	inc $fc
	inc $fe
	inc $fa
	inc $f8

	inx
	cpx #$04
	bne *-24

	// set sprite multicolors
	lda #$05
	sta $d025
	lda #$07
	sta $d026

	// colorize sprites
	lda #$0F
	sta $d027

	// positioning sprites
	lda xposlb
	sta $d000	// #0. sprite X low .byte
	lda ypos
	sta $d001	// #0. sprite Y

	// X coordinate high bits
	lda #$00
	sta $d010

	// expand sprites
	lda #$00
	sta $d01d
	lda #$00
	sta $d017

	// set multicolor flags
	lda #$01
	sta $d01c

	// set screen-sprite priority flags
	lda #$00
	sta $d01b

	// set sprite pointers
	lda   #$2c//#$28
	sta $07F8

	// turn on sprites
	lda #$01
	sta $d015
    inc SPCRCL // clear collision register
    rts