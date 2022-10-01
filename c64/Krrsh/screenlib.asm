
//===============================================================================
// Constants
.const SpaceCharacter  = 32

//===============================================================================
// Variables


ScreenRAMRowStartLow: //  SCREENRAM + 40*0, 40*1, 40*2 ... 40*24
        .byte <SCREENRAM,     <SCREENRAM+40,  <SCREENRAM+80
        .byte <SCREENRAM+120, <SCREENRAM+160, <SCREENRAM+200
        .byte <SCREENRAM+240, <SCREENRAM+280, <SCREENRAM+320
        .byte <SCREENRAM+360, <SCREENRAM+400, <SCREENRAM+440
        .byte <SCREENRAM+480, <SCREENRAM+520, <SCREENRAM+560
        .byte <SCREENRAM+600, <SCREENRAM+640, <SCREENRAM+680
        .byte <SCREENRAM+720, <SCREENRAM+760, <SCREENRAM+800
        .byte <SCREENRAM+840, <SCREENRAM+880, <SCREENRAM+920
        .byte <SCREENRAM+960

ScreenRAMRowStartHigh: //  SCREENRAM + 40*0, 40*1, 40*2 ... 40*24
        .byte >SCREENRAM,     >SCREENRAM+40,  >SCREENRAM+80
        .byte >SCREENRAM+120, >SCREENRAM+160, >SCREENRAM+200
        .byte >SCREENRAM+240, >SCREENRAM+280, >SCREENRAM+320
        .byte >SCREENRAM+360, >SCREENRAM+400, >SCREENRAM+440
        .byte >SCREENRAM+480, >SCREENRAM+520, >SCREENRAM+560
        .byte >SCREENRAM+600, >SCREENRAM+640, >SCREENRAM+680
        .byte >SCREENRAM+720, >SCREENRAM+760, >SCREENRAM+800
        .byte >SCREENRAM+840, >SCREENRAM+880, >SCREENRAM+920
        .byte >SCREENRAM+960

ColorRAMRowStartLow: //  COLORRAM + 40*0, 40*1, 40*2 ... 40*24
        .byte <COLORRAM,     <COLORRAM+40,  <COLORRAM+80
        .byte <COLORRAM+120, <COLORRAM+160, <COLORRAM+200
        .byte <COLORRAM+240, <COLORRAM+280, <COLORRAM+320
        .byte <COLORRAM+360, <COLORRAM+400, <COLORRAM+440
        .byte <COLORRAM+480, <COLORRAM+520, <COLORRAM+560
        .byte <COLORRAM+600, <COLORRAM+640, <COLORRAM+680
        .byte <COLORRAM+720, <COLORRAM+760, <COLORRAM+800
        .byte <COLORRAM+840, <COLORRAM+880, <COLORRAM+920
        .byte <COLORRAM+960

ColorRAMRowStartHigh: //  COLORRAM + 40*0, 40*1, 40*2 ... 40*24
        .byte >COLORRAM,     >COLORRAM+40,  >COLORRAM+80
        .byte >COLORRAM+120, >COLORRAM+160, >COLORRAM+200
        .byte >COLORRAM+240, >COLORRAM+280, >COLORRAM+320
        .byte >COLORRAM+360, >COLORRAM+400, >COLORRAM+440
        .byte >COLORRAM+480, >COLORRAM+520, >COLORRAM+560
        .byte >COLORRAM+600, >COLORRAM+640, >COLORRAM+680
        .byte >COLORRAM+720, >COLORRAM+760, >COLORRAM+800
        .byte >COLORRAM+840, >COLORRAM+880, >COLORRAM+920
        .byte >COLORRAM+960

ScreenCharLimitsLow:
        .byte <ScreenPosLimit,     <ScreenPosLimit+39,  <ScreenPosLimit+79
        .byte <ScreenPosLimit+120, <ScreenPosLimit+160, <ScreenPosLimit+200
        .byte <ScreenPosLimit+240, <ScreenPosLimit+280, <ScreenPosLimit+320
        .byte <ScreenPosLimit+360, <ScreenPosLimit+400, <ScreenPosLimit+440
        .byte <ScreenPosLimit+480, <ScreenPosLimit+520, <ScreenPosLimit+560
        .byte <ScreenPosLimit+600, <ScreenPosLimit+640, <ScreenPosLimit+680
        .byte <ScreenPosLimit+720, <ScreenPosLimit+760, <ScreenPosLimit+800
        .byte <ScreenPosLimit+840, <ScreenPosLimit+880, <ScreenPosLimit+920
        .byte <ScreenPosLimit+960

ScreenCharLimitsHigh:
        .byte >ScreenPosLimit,     >ScreenPosLimit+39,  >ScreenPosLimit+79
        .byte >ScreenPosLimit+120, >ScreenPosLimit+160, >ScreenPosLimit+200
        .byte >ScreenPosLimit+240, >ScreenPosLimit+280, >ScreenPosLimit+320
        .byte >ScreenPosLimit+360, >ScreenPosLimit+400, >ScreenPosLimit+440
        .byte >ScreenPosLimit+480, >ScreenPosLimit+520, >ScreenPosLimit+560
        .byte >ScreenPosLimit+600, >ScreenPosLimit+640, >ScreenPosLimit+680
        .byte >ScreenPosLimit+720, >ScreenPosLimit+760, >ScreenPosLimit+800
        .byte >ScreenPosLimit+840, >ScreenPosLimit+880, >ScreenPosLimit+920
        .byte >ScreenPosLimit+960
// Waits for a given scanline 
.macro LIBSCREEN_WAIT_V(line) {
        // /1 = Scanline (Value)

loop:   lda #line               // Scanline -> A
        cmp RASTER              // Compare A to current raster line
        bne loop               // Loop if raster line not reached 255

        }

.macro LIBSCREEN_DEBUG8BIT_VVA(valX, valY, ptr) {
                        // /1 = X Position Absolute
                        // /2 = Y Position Absolute
                        // /3 = 1st Number Low Byte Pointer
pha
txa
pha
tya
pha                
        
        lda #WHITE
        sta $0286       // set text color
        lda #$20        // space
        jsr $ffd2       // print 4 spaces
        jsr $ffd2
        jsr $ffd2
        jsr $ffd2
        //jsr $E566       // reset cursor
        ldx #valY       // Select row 
        ldy #valX       // Select column 
        jsr $E50C       // Set cursor 

        lda #0
        ldx ptr
        jsr $BDCD       // print number
pla
tay
pla
tax
pla
        }