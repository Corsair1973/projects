//==============================================================================
//                         RetroGameDev Library C64 v1
//              (C)2017 by Derek Morris <https://retrogamedev.com>
//     Conversion to KickAss 5.x by Marcelo Lv Cabral <http://lvcabral.com>
//==============================================================================
// Includes

#importonce

//===============================================================================
// Constants

.const False           = 0
.const True            = 1
.const Right           = 1
.const Left            = 0
.const OnGround        = 0
.const Jumping         = 1
.const Landing         = 2
.const Shooting        = 3
.const Shot            = 4
.const JumpHeight      = 10
.const BltSpeed        = 3


//===============================================================================
// $00-$FF  PAGE ZERO (256 bytes)
 
                // $00-$01   Reserved for IO
.const ZeroPageTemp    = $02
                // $03-$8F   Reserved for BASIC
                // using $73-$8A CHRGET as BASIC not used for our game
.const ZeroPageParam1  = $73
.const ZeroPageParam2  = $74
.const ZeroPageParam3  = $75
.const ZeroPageParam4  = $76
.const ZeroPageParam5  = $77
.const ZeroPageParam6  = $78
.const ZeroPageParam7  = $79
.const ZeroPageParam8  = $7A
.const ZeroPageParam9  = $7B
                // $90-$FA   Reserved for Kernal
.const ZeroPageLow     = $FB
.const ZeroPageHigh    = $FC
.const ZeroPageLow2    = $FD
.const ZeroPageHigh2   = $FE
                // $FF       Reserved for Kernal

//===============================================================================
// $0100-$01FF  STACK (256 bytes)


//===============================================================================
// $0200-$9FFF  RAM (40K)

.const SCREENRAM       = $0400
.const SPRITE0         = $07F8

// $0801
// Game code is placed here by using the *=$0801 directive 
// in gameMain.asm 


// 192 decimal * 64(sprite size) = 12288(hex $3000)
.const SPRITERAM       = 192
//===============================================================================
// $A000-$BFFF  BASIC ROM (8K)


//===============================================================================
// $C000-$CFFF  RAM (4K)


//===============================================================================
// $D000-$DFFF  IO (4K)

// These are some of the C64 registers that are mapped into
// IO memory space
// Names taken from 'Mapping the Commodore 64' book

.const SP0X            = $D000
.const SP0Y            = $D001
.const MSIGX           = $D010
.const RASTER          = $D012
.const SPENA           = $D015
.const SCROLX          = $D016
.const VMCSB           = $D018
.const SPBGPR          = $D01B
.const SPMC            = $D01C
.const SPSPCL          = $D01E
.const SPCRCL          = $D01F
.const EXTCOL          = $D020
.const BGCOL0          = $D021
.const BGCOL1          = $D022
.const BGCOL2          = $D023
.const BGCOL3          = $D024
.const SPMC0           = $D025
.const SPMC1           = $D026
.const SP0COL          = $D027
.const FRELO1          = $D400 //(54272)
.const FREHI1          = $D401 //(54273)
.const PWLO1           = $D402 //(54274)
.const PWHI1           = $D403 //(54275)
.const VCREG1          = $D404 //(54276)
.const ATDCY1          = $D405 //(54277)
.const SUREL1          = $D406 //(54278)
.const FRELO2          = $D407 //(54279)
.const FREHI2          = $D408 //(54280)
.const PWLO2           = $D409 //(54281)
.const PWHI2           = $D40A //(54282)
.const VCREG2          = $D40B //(54283)
.const ATDCY2          = $D40C //(54284)
.const SUREL2          = $D40D //(54285)
.const FRELO3          = $D40E //(54286)
.const FREHI3          = $D40F //(54287)
.const PWLO3           = $D410 //(54288)
.const PWHI3           = $D411 //(54289)
.const VCREG3          = $D412 //(54290)
.const ATDCY3          = $D413 //(54291)
.const SUREL3          = $D414 //(54292)
.const SIGVOL          = $D418 //(54296)      
.const COLORRAM        = $D800
.const CIAPRA          = $DC00
.const CIAPRB          = $DC01

.const SP0FR0          = $2c // sprite0 pointer for Right animation
.const SP0FL0          = $33 // sprite0 pointer for Left animation
.const SP0FREND        = $31 // End frame for spßrite 0 moving Right
.const SP0FLEND        = $38 // End frame for sprite 0 moving Left
.const SP0FSR          = $39 // Sprite 0 standing looking right
.const SP0FSL          = $3A // Sprite 0 standing looking left
.const SP0JR           = $3B //Sprite 0 jumping Right
.const SP0JL           = $3D //Sprite 0 jumping Left
.const SP0FR           = $3C //Sprite 0 Falling Right
.const SP0FL           = $3E //Sprite 0 Falling Left
.const SP0SL           = $24 // Sprite 0  holding gun facing left
.const SP0SR           = $26 // Sprite 0 holding gun facing right
.const BLT01           = $2D // Player bullet character
.const WHITE           = $01 // çolour white
.const ScreenPosLimit  = $0000
//===============================================================================
// $E000-$FFFF  KERNAL ROM (8K) 


//===============================================================================
