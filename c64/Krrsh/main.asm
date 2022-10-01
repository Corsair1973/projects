*= $0801 "Basic Loader" 
BasicUpstart2(Init)
#import "constants.asm"
#import "data.asm" 
#import "sprites.asm" 
#import "screenlib.asm"
#import "setup.asm" 
*=$3063 "Main"
Init: 
        jsr sceenSetUp
        sei // turn interupts off
        jsr initializeZeroPage
mainLoop:
   
    
    jsr getInput
    LIBSCREEN_WAIT_V(250)
    inc $d020
    jsr spriteUpdate
   
    dec $d020
    jmp mainLoop

getInput: {

ReadCIA:lda CIAPRA //%11111111 all bits "on" if nothing pressed. Up, Down, Left, Rigtht, Fire
Init:   ldy #0
        ldx #0
        stx jsMove // Set jsMove to 0 (no movement). This tracks if the joystick go input
    
        pha
        lda playerState // If Jumping then goto end. Player can only move from OnGround state
        //jsr debug
        beq up // OnGround = 0 so chekc for normal movement
      //  cmp #Jumping // Is player jumping?
      //  beq jumping //Then ignore input
        pla
        lsr
        lsr
        jmp left // If Landing then chekc for direction X-axis input
        
up:     pla
        lsr // push bit 0 into the carry
        bcs down  // if carry set then Up is NOT pressed, got to check for Down
        //dec ypos// else Up is pressed, so decrement Y axis
       
        pha
       // lda playerState
       // sta playerPreviousState
        lda #Jumping
        sta playerState
        inc jsMove
        pla
down:   lsr // push bit "1" into carry
        bcs left // if carry set then Down is NOT pressed, got to check for Left
        //inc ypos // else Down is pressed, so increment Y axis
      
      //  inc jsMove
left:   lsr //push bit "2" into carry
        bcs right // if carry set then Left is NOT pressed, go check for Right
        //dec xposlb  //else Left is pressed, so decrement X axis
        lda #Left
        sta direction
        inc jsMove
        jmp done
right:  lsr // push bit "3" into carry
        bcs fire// if carry set then Right is NOT pressed, go to end
      //  inc xposlb// else Right is pressed, so increment X axis
        lda #Right
        sta direction
        inc jsMove
fire:   // code for bit "4" fire button goes here
        lsr
        bcs done
        lda playerState // Is the player on the ground?
        bne done // If not then can't fire so skip to end
        lda #Shooting
        sta playerState
        inc jsMove
//lda temp
//beq ahead1
//lda #1
//sta temp2
//ahead1:
        jmp done
jumping:
        pla
done:

rts
}

spriteUpdate: {
        jsr debug
        jsr updatePlayerBullet
        lda playerState
        cmp #Jumping// Is the player Jumping
        beq Jumped // Then skip to Jumping
        cmp #Shooting
        beq PlayerShoot
        cmp #Landing // Is player landing
        bne colcheck_gnd // If NOT then must be on the ground - skip ahead
        lda direction // Else get landing direction
        beq FallLeft
        lda #SP0FR //Right landind animation 
        sta SPRITE0
        jmp colcheck
PlayerShoot:     
        lda direction
        bne ShootRight
        lda #SP0SL
        sta SPRITE0
        jsr spawnBullet
        jmp Shot
ShootRight:
        lda #SP0SR
        sta SPRITE0
        jsr spawnBullet
Shot:
        lda #OnGround
        sta playerState
        jmp done
FallLeft:
        lda #SP0FL //Left landind animation 
        sta SPRITE0
   
colcheck:
        jsr MoveSprite
        jsr PixelToChars
        jsr CollisionCheck // Else check for collision
        jmp end
colcheck_gnd:
        jsr PixelToChars
        jsr CollisionCheck // Else check for collision
noCollision:
        lda playerState // Is the player OnGround = 0
        bne animationCounter // If NOT then increment animation counter
        lda jsMove // Else, Was joystick was moved
        bne animationCounter // If NOT Then jump ahead to animation counter
        lda direction // Else set 1st animation "standing" frame
        beq standLeft // if last direction was LEFT then goto stand left
        lda #SP0FSR // Standing animation frame (move right)
        sta SPRITE0 // Update sprite 0
        jmp end // done
standLeft:
        lda #SP0FSL // Standing animation frame (move left)
        sta SPRITE0
        jmp end
animationCounter:
        dec animateCounter // decrement counter (starts at 5)
          // anitemate 1 in 5
        bne end // if less than 5 then goto end of subroutine
   
        lda #5 // reset value = 5
        sta animateCounter // reset count if 5 has been reached
        jmp SpriteMove1
Jumped: // Player is jumping
        
        lda direction
        beq JumpLeft
        lda #SP0JR // Jumping to the Right
        sta SPRITE0
        jmp SpriteMove2
JumpLeft:
        lda #SP0JL // Jumping to the Left
        sta SPRITE0  
SpriteMove2:  
       
        jsr MoveSprite
        jmp end
SpriteMove1:  
        jsr MoveSprite

 Animation:
        clc // clear carry flag before addition!
        lda direction // Current joystick direction (direction Left = 0, Right =1)
        adc previous // Previous joystick direction
        beq left //  Was going left and still going left (Left + Left = 0)
        cmp #2 // Right + Right = 2
        beq right // Was going right and still going right
        lda previous // Change of direction
        beq turnR // Was going left now going right (0+1=1)
        jmp turnL // Else was going right now going left (1+0=1)

left:
// keep going left
        lda #SP0FSL // Left Standing pose pointer
        cmp SPRITE0 // check is sprite 0 is in standind pose
        beq turnL // if true then goto starting Left animation frame
        inc SPRITE0 // Animate sprite 0 next frame (sprite 0 pointer)
        sec
        lda SPRITE0
        cmp #SP0FLEND+1 // check if at end of animation frames (left). +1 because next check is < than not <=
        bcc done  // Less than animation frame limit?
turnL:  lda #SP0FL0 // Else set starting animation frame (move left)
        sta SPRITE0 // reset to startuing frame
        jmp done
right:
        lda #SP0FSR // Right Standing pose pointer
        cmp SPRITE0 // check is sprite 0 is in standind pose
        beq turnR // if true then goto starting Left animation frame
        inc SPRITE0 // Animate sprite 0 next frame (sprite 0 pointer)
        sec
        lda SPRITE0
        cmp #SP0FREND+1 // check if at end of animation frames (right) +1 because next check is < than not <=
        bcc done  // Less than animation frame limit?
turnR:  lda #SP0FR0 // Else set starting animation frame (move right)
        sta SPRITE0 // reset to startuing frame
     

done:   
      lda direction
      sta previous

end: 


rts
}
MoveSprite: {
      

        lda playerState
        beq xaxis // OnGround = 0 then just do horizontal movement
        cmp #Landing
        beq xaxis_jump
        dec jumpCounter // Else decrement jump counter
        
        bne yaxis // Keep going up if less than jump height
        lda #JumpHeight   //Else
        sta jumpCounter //reset jump counter (5)
        lda #Landing // Change state to Landing
        sta playerState
   
        jmp xaxis_jump
yaxis:  
        dec ypos // Lowering Y moves Sprite up screen
        dec ypos
      //  inc jumpCounter
        lda ypos
        sta SP0Y
xaxis_jump:
        lda direction
        bne incX // left = 0, 1 = right
        dec xposlb //  move left
        jmp doneX
incX:   
        inc xposlb // move right
        jmp doneX
xaxis:  
        lda direction
        bne incX2 // left = 0, 1 = right
        dec xposlb //  move left
        dec xposlb 
        dec xposlb
        jmp doneX
incX2:   
        inc xposlb // move right
        inc xposlb
        inc xposlb
doneX:
        lda xposlb  
        sta SP0X // store sum in sprite 0 x position low byte 
rts
}
/* CollisionCheckOld: {

        lda SPCRCL // Sprite - Character collision register
        and #%00000001 // check bit 0 for background char collision. 1 = no collision.
        bne Collision // If collision then Sprite 0 is walking on platform
      //  lda playerState
      //  cmp #Landing
      //  beq fall
        //sta playerPreviousState
       // lda #Landing
       // sta playerState
fall:   inc ypos // Else decrement Y axis "falling down"
        inc ypos 
        lda ypos
        sta SP0Y

        jmp done
       // inc temp2 //debug
Collision:
        lda playerState
        beq done // If already OnGround then skip to end
        //sta playerPreviousState
        lda #OnGround // Else change state
        sta playerState

done:
        rts
} */

CollisionCheck: {
        // Called after PixelToChars
        lda (ZeroPageParam1),y // this should contain the char below the player
        // DEBUG ******************
      //  sta temp2
      //  LIBSCREEN_DEBUG8BIT_VVA(10,16,temp2)
        //       ******************
        cmp #28 // Ground is #28
        beq GroundCollision
        lda #Landing
        sta playerState
        inc ypos // Else decrement Y axis "falling down"
        inc ypos 
        lda ypos
        sta SP0Y
        jmp done

GroundCollision:
        lda playerState
        beq done // If already OnGround then skip to end
        //sta playerPreviousState
        lda #OnGround // Else change state
        sta playerState
        lda #JumpHeight
        sta jumpCounter
        dec SP0Y
      

done:
        rts
}

PixelToChars: {
        // convert pixel to charcter location
        // 40 characters per row 0-39
        // 24 Characters per column 0-24
        // Each character is 8x8 pixels
        ldy #0
        sec
        lda SP0Y // Player sprite Y location in pixels
        sbc #30 // Y  discount border
        lsr // divide by 2
        lsr // divide by 4
        lsr // divide by 8
        tax
        lda ScreenRAMRowStartLow,x
        sta ZeroPageParam1
        lda ScreenRAMRowStartHigh,x
        sta ZeroPageParam2


        sec
        lda SP0X // Player sprite X location in pixels
        sbc #12 // X - border
        lsr
        lsr
        lsr // divide by 8
        clc
        adc ZeroPageParam1 // add X-chars to the value already calculated for Y
        sta ZeroPageParam1
        lda ZeroPageParam2 // Same for high byte
        adc #0
        sta ZeroPageParam2
        // Debug *****************
        // lda SpaceCharacter
        // sta (ZeroPageParam1),y
        //       *****************
       

        rts


}
spawnBullet: {

        lda fired
        bne exit
        jsr PixelToChars
        txa
        sta BulletScreenIndex
        ldy #0
        lda direction
        sta fireDirection
        beq fireLeft
fireRight:
        sec
        lda ZeroPageParam1
        sbc #78
        sta ZeroPageParam1
        lda ZeroPageParam2
        sbc #0
        sta ZeroPageParam2 
        jmp done
fireLeft:
        sec
        lda ZeroPageParam1
        sbc #82
        sta ZeroPageParam1
        lda ZeroPageParam2
        sbc #0
        sta ZeroPageParam2 
done:
        lda #BLT01
        sta (ZeroPageParam1),y
        lda ZeroPageParam1
        sta <bulletPos
        lda ZeroPageParam2
        sta >bulletPos
        lda #True
        sta fired

exit:
        rts
}

updatePlayerBullet: {
        // Every 10 cycles update bullet position

        lda fired // has a bullet been fired?
        beq exit // if not then exit
        dec bulletCounter // If Fired then reduce counter
        bne exit // Reached zero? If not then exit
       // jsr initializeZeroPage // Else reset zero page
        lda #10 
        sta bulletCounter // Reset bullet counter
        lda <bulletPos // Get low byte of bullet position
        sta ZeroPageParam3 // 
        lda >bulletPos // get high byte
        sta ZeroPageParam4
        lda #SpaceCharacter 
        sta (ZeroPageParam3),y // overright bullet char with blank space
        lda BulletScreenIndex // Get char row of bullet
        tax
        lda fireDirection // determine left or right
        beq Left
Right:
      
        jsr bltRightLimit // check for right of screen limit
        jmp done
Left:
        jsr bltLeftLimit // check for left of screen limit
done:
        lda #BLT01
        sta (ZeroPageParam3),y
        lda ZeroPageParam3
        sta <bulletPos
        lda ZeroPageParam4
        sta >bulletPos
    

exit:
        rts

}

bltRightLimit: {
        dex // 1 row down from player
        lda ScreenCharLimitsHigh,x // get far right limit high byte
        sta >ScreenCharLimit
        cmp >bulletPos //ZeroPageParam4 // compare with bullet pos high byte
        bne ahead // if Does NOT match then jump ahead
        lda ScreenCharLimitsLow,x  // get far right limit low byte
        sta <ScreenCharLimit
        cmp <bulletPos //ZeroPageParam3 // compare with bullet pos high byte
        beq limitReached // if it matches then go to limit reached
ahead:
        clc
        lda ZeroPageParam3
        adc #1 // increase position by 1 char
        sta ZeroPageParam3
        lda ZeroPageParam4
        adc #0
        sta ZeroPageParam4
        jmp done
limitReached:
        lda #False
        sta fired
done:
        rts
}
bltLeftLimit: {
        dex // 1 row 
        dex
        lda ScreenCharLimitsHigh,x
        sta >ScreenCharLimit
        cmp >bulletPos
        bne ahead2
        lda ScreenCharLimitsLow,x
        sta <ScreenCharLimit
        cmp <bulletPos
        beq limitReached
ahead2: 
        sec
        lda ZeroPageParam3
        sbc #1
        sta ZeroPageParam3
        lda ZeroPageParam4
        sbc #0
        sta ZeroPageParam4
        jmp done
limitReached:
        lda #False
        sta fired
done:
        rts
}

initializeZeroPage: {

        lda #0
      //  sta ZeroPageParam1
      //  sta ZeroPageParam2
        sta ZeroPageParam3
        sta ZeroPageParam4
        rts
}

debug: {
// Debug  start

LIBSCREEN_DEBUG8BIT_VVA(10,10,BulletScreenIndex)
LIBSCREEN_DEBUG8BIT_VVA(10,12,<bulletPos)
LIBSCREEN_DEBUG8BIT_VVA(08,12,>bulletPos)

LIBSCREEN_DEBUG8BIT_VVA(10,16,<ScreenCharLimit)
LIBSCREEN_DEBUG8BIT_VVA(08,16,>ScreenCharLimit)
 

// Debug end
rts
}
jsMove:                 .byte 0
temp2:                  .byte 0
animateCounter:         .byte 5
direction:              .byte Right // 0=left, 1=right
previous:               .byte Right
xposlb:                 .byte $18
ypos:                   .byte $35
playerState:            .byte OnGround
playerPreviousState:    .byte OnGround
jumpCounter:            .byte 10
fired:                  .byte False
fireDirection:          .byte 0
bulletCounter:          .byte 10
BulletScreenIndex:      .byte 0
bulletPos:              .byte 0,0
bulletRL:               .byte 39
bulletLL:               .byte 1
ScreenCharLimit:        .byte 0,0