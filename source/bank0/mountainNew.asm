
SPRITE_SCALE        =        $09; 80 highest possible value
SHITREG_POKE_VALUE  =        $01 


; PC not usable :-)

; cmpx #4
; pshs d,y,x,pc,u,cc;16
; puls d,y,x,pc,u,cc; 16
; pshs y,x,pc,u,d;15
; puls y,x,pc,u,d; 15
; pshs y,x,pc,u,cc;14
; puls y,x,pc,u,cc; 14
; pshs a,x,pc,u,cc;13
; puls a,x,pc,u,cc;13
; pshs x,pc,u,cc;12
; puls x,pc,u,cc;12
; pshs pc,u,d;11
; puls pc,u,d;11
; pshs pc,u,cc;10
; puls pc,u,cc;10
; pshs u,d;9
; puls u,d;9
; pshs u,cc;8
; puls u,cc;8
; pshs u;7
; puls u;7
; pshs cc;6
; puls cc;6
; tfr a,a; 6
; brn 0; 3
; NOP ; 2
WAIT2               macro    
                    nop                                   ;     wait 2 cycles 
                    endm     
WAIT3               macro    
                    brn      0                            ; wait 3 cycles 
                    endm     
WAIT4               macro    
                    WAIT2    
                    WAIT2    
                    endm     
WAIT5               macro    
                    WAIT3    
                    WAIT2    
                    endm     
WAIT6               macro    
                    tfr      a,a                          ; wait 6 cycles 
                    endm     
WAIT7               macro    
                    WAIT5    
                    WAIT2    
                    endm     
WAIT8               macro    
                    WAIT6    
                    WAIT2    
                    endm     
WAIT9               macro    
                    WAIT6    
                    WAIT3    
                    endm     
WAIT10              macro    
                    WAIT6    
                    WAIT4    
                    endm     
WAIT11              macro    
                    WAIT8    
                    WAIT3    
                    endm     
WAIT12              macro    
                    pshs     cc                           ; wait 12 cycles 
                    puls     cc 
                    endm     
WAIT13              macro    
                    WAIT11   
                    WAIT2    
                    endm     
WAIT14              macro    
                    pshs     u                            ; wait 14 cycles 
                    puls     u 
                    endm     
WAIT15              macro    
                    WAIT12   
                    WAIT3    
                    endm     
WAIT16              macro    
                    pshs     u,cc                         ; wait 16 cycles 
                    puls     u,cc 
                    endm     
WAIT17              macro    
                    WAIT14   
                    WAIT3    
                    endm     
WAIT18              macro    
                    pshs     u,d                          ; wait 18 cycles 
                    puls     u,d 
                    endm     
WAIT19              macro    
                    WAIT16   
                    WAIT3    
                    endm     
WAIT20              macro    
                    pshs     d,u,cc                      ; wait 20 cycles 
                    puls     d,u,cc 
                    endm     
WAIT21              macro    
                    WAIT18   
                    WAIT3    
                    endm     
WAIT22              macro    
                    pshs     x,u,d                       ; wait 22 cycles 
                    puls     x,u,d 
                    endm     
WAIT23              macro    
                    WAIT20   
                    WAIT3    
                    endm     
WAIT24              macro    
                    pshs     x,y,u,cc                     ; wait 24 cycles 
                    puls     x,y,u,cc 
                    endm     
WAIT25              macro    
                    WAIT22   
                    WAIT3    
                    endm     
WAIT26              macro    
                    pshs     d,x,y,u                   ; wait 26 cycles 
                    puls     d,x,y,u 
                    endm     
WAIT27              macro    
                    WAIT24   
                    WAIT3    
                    endm     
WAIT28              macro    
                    pshs     y,x,d,u,cc                   ; wait 28 cycles 
                    puls     y,x,d,u,cc 
                    endm     
WAIT29              macro    
                    WAIT26   
                    WAIT3    
                    endm     
WAIT30              macro 
 WAIT28
 WAIT2   
                    endm     
WAIT31              macro    
                    WAIT28   
                    WAIT3    
                    endm     
WAIT32              macro    
 WAIT30
 WAIT2
                    endm     
WAIT33              macro    
                    WAIT30   
                    WAIT3    
                    endm     
WAIT34              macro    
                    WAIT32   
                    WAIT2    
                    endm     
WAIT35              macro    
                    WAIT32   
                    WAIT3    
                    endm     
WAIT36              macro    
                    WAIT32   
                    WAIT4    
                    endm     
WAIT37              macro    
                    WAIT32   
                    WAIT5    
                    endm     
WAIT38              macro    
                    WAIT32   
                    WAIT6    
                    endm     
WAIT39              macro    
                    WAIT32   
                    WAIT7    
                    endm     
WAIT40              macro    
                    WAIT32   
                    WAIT8    
                    endm     
WAIT41              macro    
                    WAIT32   
                    WAIT9    
                    endm     
WAIT42              macro    
                    WAIT32   
                    WAIT10   
                    endm     
WAIT43              macro    
                    WAIT32   
                    WAIT11   
                    endm     
WAIT44              macro    
                    WAIT32   
                    WAIT12   
                    endm     
WAIT45              macro    
                    WAIT32   
                    WAIT13   
                    endm     
WAIT46              macro    
                    WAIT32   
                    WAIT14   
                    endm     
WAIT47              macro    
                    WAIT32   
                    WAIT15   
                    endm     
WAIT48              macro    
                    WAIT32   
                    WAIT16   
                    endm     
WAIT49              macro    
                    WAIT32   
                    WAIT17   
                    endm     
WAIT50              macro    
                    WAIT32   
                    WAIT18   
                    endm     
WAIT51              macro    
                    WAIT32   
                    WAIT19   
                    endm     
WAIT52              macro    
                    WAIT32   
                    WAIT20   
                    endm     
WAIT53              macro    
                    WAIT32   
                    WAIT21   
                    endm     
WAIT54              macro    
                    WAIT32   
                    WAIT22   
                    endm     
WAIT55              macro    
                    WAIT32   
                    WAIT23   
                    endm     
WAIT56              macro    
                    WAIT32   
                    WAIT24   
                    endm     
WAIT57              macro    
                    WAIT32   
                    WAIT25   
                    endm     
WAIT58              macro    
                    WAIT32   
                    WAIT26   
                    endm     
WAIT59              macro    
                    WAIT32   
                    WAIT27   
                    endm     
WAIT60              macro    
                    WAIT32   
                    WAIT28   
                    endm     
WAIT61              macro    
                    WAIT32   
                    WAIT29   
                    endm     
WAIT62              macro    
                    WAIT32   
                    WAIT30   
                    endm     
WAIT63              macro    
                    WAIT32   
                    WAIT31   
                    endm     
WAIT64              macro    
                    WAIT32   
                    WAIT32   
                    endm     
WAIT65              macro    
                    WAIT32   
                    WAIT33   
                    endm     
WAIT66              macro    
                    WAIT32   
                    WAIT34   
                    endm     
WAIT67              macro    
                    WAIT32   
                    WAIT35   
                    endm     
WAIT68              macro    
                    WAIT32   
                    WAIT36   
                    endm     
WAIT69              macro    
                    WAIT32   
                    WAIT37   
                    endm     
WAIT70              macro    
                    WAIT32   
                    WAIT38   
                    endm     
WAIT71              macro    
                    WAIT32   
                    WAIT39   
                    endm     
WAIT72              macro    
                    WAIT32   
                    WAIT40   
                    endm     
WAIT73              macro    
                    WAIT32   
                    WAIT41   
                    endm     
WAIT74              macro    
                    WAIT32   
                    WAIT42   
                    endm     
WAIT75              macro    
                    WAIT32   
                    WAIT43   
                    endm     
WAIT76              macro    
                    WAIT32   
                    WAIT44   
                    endm     
WAIT77              macro    
                    WAIT32   
                    WAIT45   
                    endm     
WAIT78              macro    
                    WAIT32   
                    WAIT46   
                    endm     
WAIT79              macro    
                    WAIT32   
                    WAIT47   
                    endm     
WAIT80              macro    
                    WAIT32   
                    WAIT48   
                    endm     
ADD_NOPS            macro    
                    if       SPRITE_SCALE>7 
                    if       SPRITE_SCALE-7 == 2 
                    WAIT2    
                    endif    
                    if       SPRITE_SCALE-7 == 3 
                    WAIT3    
                    endif    
                    if       SPRITE_SCALE-7 == 4 
                    WAIT4    
                    endif    
                    if       SPRITE_SCALE-7 == 5 
                    WAIT5    
                    endif    
                    if       SPRITE_SCALE-7 == 6 
                    WAIT6    
                    endif    
                    if       SPRITE_SCALE-7 == 7 
                    WAIT7    
                    endif    
                    if       SPRITE_SCALE-7 == 8 
                    WAIT8    
                    endif    
                    if       SPRITE_SCALE-7 == 9 
                    WAIT9    
                    endif    
                    if       SPRITE_SCALE-7 == 10 
                    WAIT10   
                    endif    
                    if       SPRITE_SCALE-7 == 11 
                    WAIT11   
                    endif    
                    if       SPRITE_SCALE-7 == 12 
                    WAIT12   
                    endif    
                    if       SPRITE_SCALE-7 == 13 
                    WAIT13   
                    endif    
                    if       SPRITE_SCALE-7 == 14 
                    WAIT14   
                    endif    
                    if       SPRITE_SCALE-7 == 15 
                    WAIT15   
                    endif    
                    if       SPRITE_SCALE-7 == 16 
                    WAIT16   
                    endif    
                    if       SPRITE_SCALE-7 == 17 
                    WAIT17   
                    endif    
                    if       SPRITE_SCALE-7 == 18 
                    WAIT18   
                    endif    
                    if       SPRITE_SCALE-7 == 19 
                    WAIT19   
                    endif    
                    if       SPRITE_SCALE-7 == 20 
                    WAIT20   
                    endif    
                    if       SPRITE_SCALE-7 == 21 
                    WAIT21   
                    endif    
                    if       SPRITE_SCALE-7 == 22 
                    WAIT22   
                    endif    
                    if       SPRITE_SCALE-7 == 23 
                    WAIT23   
                    endif    
                    if       SPRITE_SCALE-7 == 24 
                    WAIT24   
                    endif    
                    if       SPRITE_SCALE-7 == 25 
                    WAIT25   
                    endif    
                    if       SPRITE_SCALE-7 == 26 
                    WAIT26   
                    endif    
                    if       SPRITE_SCALE-7 == 27 
                    WAIT27   
                    endif    
                    if       SPRITE_SCALE-7 == 28 
                    WAIT28   
                    endif    
                    if       SPRITE_SCALE-7 == 29 
                    WAIT29   
                    endif    
                    if       SPRITE_SCALE-7 == 30 
                    WAIT30   
                    endif    
                    if       SPRITE_SCALE-7 == 31 
                    WAIT31   
                    endif    
                    if       SPRITE_SCALE-7 == 32 
                    WAIT32   
                    endif    
                    if       SPRITE_SCALE-7 == 33 
                    WAIT33   
                    endif    
                    if       SPRITE_SCALE-7 == 34 
                    WAIT34   
                    endif    
                    if       SPRITE_SCALE-7 == 35 
                    WAIT35   
                    endif    
                    if       SPRITE_SCALE-7 == 36 
                    WAIT36   
                    endif    
                    if       SPRITE_SCALE-7 == 37 
                    WAIT37   
                    endif    
                    if       SPRITE_SCALE-7 == 38 
                    WAIT38   
                    endif    
                    if       SPRITE_SCALE-7 == 39 
                    WAIT39   
                    endif    
                    if       SPRITE_SCALE-7 == 40 
                    WAIT40   
                    endif    
                    if       SPRITE_SCALE-7 == 41 
                    WAIT41   
                    endif    
                    if       SPRITE_SCALE-7 == 42 
                    WAIT42   
                    endif    
                    if       SPRITE_SCALE-7 == 43 
                    WAIT43   
                    endif    
                    if       SPRITE_SCALE-7 == 44 
                    WAIT44   
                    endif    
                    if       SPRITE_SCALE-7 == 45 
                    WAIT45   
                    endif    
                    if       SPRITE_SCALE-7 == 46 
                    WAIT46   
                    endif    
                    if       SPRITE_SCALE-7 == 47 
                    WAIT47   
                    endif    
                    if       SPRITE_SCALE-7 == 48 
                    WAIT48   
                    endif    
                    if       SPRITE_SCALE-7 == 49 
                    WAIT49   
                    endif    
                    if       SPRITE_SCALE-7 == 50 
                    WAIT50   
                    endif    
                    if       SPRITE_SCALE-7 == 51 
                    WAIT51   
                    endif    
                    if       SPRITE_SCALE-7 == 52 
                    WAIT52   
                    endif    
                    if       SPRITE_SCALE-7 == 53 
                    WAIT53   
                    endif    
                    if       SPRITE_SCALE-7 == 54 
                    WAIT54   
                    endif    
                    if       SPRITE_SCALE-7 == 55 
                    WAIT55   
                    endif    
                    if       SPRITE_SCALE-7 == 56 
                    WAIT56   
                    endif    
                    if       SPRITE_SCALE-7 == 57 
                    WAIT57   
                    endif    
                    if       SPRITE_SCALE-7 == 58 
                    WAIT58   
                    endif    
                    if       SPRITE_SCALE-7 == 59 
                    WAIT59   
                    endif    
                    if       SPRITE_SCALE-7 == 60 
                    WAIT60   
                    endif    
                    if       SPRITE_SCALE-7 == 61 
                    WAIT61   
                    endif    
                    if       SPRITE_SCALE-7 == 62 
                    WAIT62   
                    endif    
                    if       SPRITE_SCALE-7 == 63 
                    WAIT63   
                    endif    
                    if       SPRITE_SCALE-7 == 64 
                    WAIT64   
                    endif    
                    if       SPRITE_SCALE-7 == 65 
                    WAIT65   
                    endif    
                    if       SPRITE_SCALE-7 == 66 
                    WAIT66   
                    endif    
                    if       SPRITE_SCALE-7 == 67 
                    WAIT67   
                    endif    
                    if       SPRITE_SCALE-7 == 68 
                    WAIT68   
                    endif    
                    if       SPRITE_SCALE-7 == 69 
                    WAIT69   
                    endif    
                    if       SPRITE_SCALE-7 == 70 
                    WAIT70   
                    endif    
                    if       SPRITE_SCALE-7 == 71 
                    WAIT71   
                    endif    
                    if       SPRITE_SCALE-7 == 72 
                    WAIT72   
                    endif    
                    if       SPRITE_SCALE-7 == 73 
                    WAIT73   
                    endif    
                    if       SPRITE_SCALE-7 == 74 
                    WAIT74   
                    endif    
                    if       SPRITE_SCALE-7 == 75 
                    WAIT75   
                    endif    
                    if       SPRITE_SCALE-7 == 76 
                    WAIT76   
                    endif    
                    if       SPRITE_SCALE-7 == 77 
                    WAIT77   
                    endif    
                    if       SPRITE_SCALE-7 == 78 
                    WAIT78   
                    endif    
                    if       SPRITE_SCALE-7 == 79 
                    WAIT79   
                    endif    
                    if       SPRITE_SCALE-7 == 80 
                    WAIT80   
                    endif    
;                    nop      (SPRITE_SCALE-7)/2 
                    endif    
                    endm     
ADD_NOPS_NOU        macro    
                    if       SPRITE_SCALE>(7-5) 
                    nop      (SPRITE_SCALE-(7-5))/2 
                    endif    
                    endm     





;/* HIGHEST SCALE FOR SMARTLIST + CONTINUE is 16!
;***************************************************************************
delayReset          EQU      5 
;***************************************************************************
; DEFINE SECTION
;***************************************************************************
Vec_Pattern         EQU      $C829                        ;Dot pattern (bits) 
music1              EQU      $FD0D 
VIA_port_b          EQU      $D000                        ;VIA port B data I/O register 
VIA_port_a          EQU      $D001                        ;VIA port A data I/O register (handshaking) 
VIA_t1_cnt_lo       EQU      $D004                        ;VIA timer 1 count register lo (scale factor) 
VIA_t1_cnt_hi       EQU      $D005                        ;VIA timer 1 count register hi 
VIA_shift_reg       EQU      $D00A                        ;VIA shift register 
VIA_cntl            EQU      $D00C                        ;VIA control register 
VIA_int_flags       EQU      $D00D                        ;VIA interrupt flags register 
Intensity_5F        EQU      $F2A5                        ; 
Wait_Recal          EQU      $F192                        ; 
Moveto_d            EQU      $F312                        ; 
Vec_Joy_1_X         EQU      $C81B                        ;Joystick 1 left/right 
Joy_Digital         EQU      $F1F8 
;***************************************************************************
; Variable / RAM SECTION
;***************************************************************************
; insert your variables (RAM usage) in the BSS section
; user RAM starts at $c880 
                    BSS      
                    ORG      $c880                        ; start of our ram space 
calibrationValue    ds       1 
gameScale           ds       1 
animationCounter    ds       1 
delayCounter        ds       1 
;***************************************************************************
; HEADER SECTION
;***************************************************************************
; The cartridge ROM starts at address 0
                    CODE     
                    ORG      0 
; the first few bytes are mandatory, otherwise the BIOS will not load
; the ROM file, and will start MineStorm instead
                    DB       "g GCE 2018", $80 ; 'g' is copyright sign
                    DW       music1                       ; music from the rom 
                    DB       $F8, $50, $20, -$80          ; hight, width, rel y, rel x (from 0,0) 
                    DB       "SMARTLIST ANIM", $80        ; some game information, ending with $80
                    DB       0                            ; end of game header 
;***************************************************************************
; CODE SECTION
;***************************************************************************
;***************************************************************************
; CODE SECTION
;***************************************************************************
; here the cartridge program starts off
                    LDA      #delayReset 
                    STA      delayCounter 
                    CLR      animationCounter 
                    clr      calibrationValue 
                    lda      #$80 
                    sta      gameScale 
main: 
                    JSR      Joy_Digital 
                    LDA      Vec_Joy_1_X 
                    BEQ      joyDone 
                    BMI      left_move 
right_move: 
                    inc      calibrationValue 
                    bra      joyDone 

left_move 
                    dec      calibrationValue 
joyDone 
                    JSR      Wait_Recal                   ; Vectrex BIOS recalibration 
                    jsr      Intensity_5F 
                    jsr      calibrationZero 
redoFromStart 
                    CLRA     
                    LDB      animationCounter             ; current animation frame 
                    ASLB                                  ; times two since it is a word pointer 
                    ROLA     
                    LDU      #_SMVB_animData                ; address of data 
                    LDU      d,U 
                    bne      notEndYet 
                    CLR      animationCounter 
                    bra      redoFromStart 

notEndYet 
                    ldd      #0 
                    jsr      Moveto_d 
                    lda      #SPRITE_SCALE 
                    sta      VIA_t1_cnt_lo 
                    bsr      drawSmart 
                    DEC      delayCounter 
                    BNE      main 
                    LDA      #delayReset 
                    STA      delayCounter 
                    INC      animationCounter 
                    BRA      main                         ; and repeat forever 


;***************************************************************************
; ROUTINE SECTION
;***************************************************************************
                    direct   $d0 
;***************************************************************************

; for scale 7 
; we need WAIT6 after a poke to hi
; followd directly by a set_y_int
; todo 
; last draw could contain $F in A
; than load not needed - attention 
; when cycles are not done for load, than shift value might be needed 2 higher!
; also in X could be some sensible value in X for one of the other 
;SMVB_lastDraw_rts2                                ;#isfunction  
; list format
; y pos byte -> REG A
; VIA_B for x reg = 01 *256 + x pos byte -> REG X
; pointer to draw function -> PC
; 5 bytes per "position" (except continuous)
; reg A must be constantly == 0!
; opti finding
; a)  Findings T1 can be 2 cycles "off" -> smartlist max scale of "optimium" reduced from 9 to 7 scale :-(
; b ) y and z sampling need up to 4 cycles to bare fruit (poke b reg)
;     90% vectrex (guess) need 0 cycles
;     95% vectrex are content with 2 cycles (1 nop)
;     some few vectrex NEED 4 cycles!!! ARGH!
; c)  std to reg b of via (Y Reg) does not always / everywhere work
;
;
; delays needed for 5% of vectrex
; cost on a "full" screen
; about 2000 cycles
;VECTREX_SAVE_DELAY  =        1 
SHITREG_POKE_VALUE  =        $01 

ADD_BURST macro
 
 endm

DELAY_NONE macro
 ADD_BURST
 endm


;
Y_DELAY_4             macro    
                    nop      
                    nop      
 ADD_BURST
                    endm     

Y_DELAY_HALF_4        macro    
                    nop      
 ADD_BURST

                    endm     
;
Y_DELAY             macro    
 Y_DELAY_4
 ADD_BURST
 endm
  
Y_DELAY_HALF        macro    
 Y_DELAY_HALF_4
                    endm     



SET_Y_INT           macro    
                    sta      <VIA_port_b                  ; 4 
                    stb      <VIA_port_a                  ; 4 
                    endm     
VB_SPRITE_SCALE     =        SPRITE_SCALE 
; NOPS add one less, since PULL X is one cycle more than pull a!
ADD_NOPS            macro    
                    if       VB_SPRITE_SCALE>8 
                    nop      (VB_SPRITE_SCALE-8)/2 
                    endif    
                    endm     
ADD_NOPS_NOU        macro    
                    if       VB_SPRITE_SCALE>(8-5) 
                    nop      (VB_SPRITE_SCALE-8-5)/2 
                    endif    
                    endm     
WAIT_BEFORE         macro    
                    WAIT3    
                    endm     
WAIT_AFTER          macro    
                    WAIT7    
                    endm     
INIT_MOVE_org       macro    
                    sta      <VIA_shift_reg               ; 
 DELAY_NONE
                    stx      <VIA_port_b                  ; 5 
                    sta      <VIA_t1_cnt_hi 
                    endm     
INIT_MOVE           macro    
                    ldb      #%11100000 
                    stb      <VIA_shift_reg               ; 
 DELAY_NONE
                    stx      <VIA_port_b                  ; 5 
                    sta      <VIA_t1_cnt_hi 
                    endm     
INIT_MOVE_SJ        macro    
 DELAY_NONE
                    stx      <VIA_port_b                  ; 5 
                    sta      <VIA_t1_cnt_hi 
                    sta      <VIA_shift_reg               ; 
                    endm     
;***************************************************************************
drawSmart                                            ;#isfunction  
                    clra     
                    pulu     b,x,pc 
;***************************************************************************
;/* HIGHEST SCALE FOR SMARTLIST + CONTINUE is 16!
SMVB_setScale:                                            ;#isfunction  
                    stb      <VIA_t1_cnt_lo 
                    pulu     b,x,pc 

SMVB_setIntensity:                                          ;#isfunction  
                    WAIT10   
                    sta      <VIA_port_a 
                    ldd      #$0401 
                    sta      <VIA_port_b 
                    stb      <VIA_port_b 
                    pulu     b,x,pc 

SMVB_LightOff_Intensity:                                      ;#isfunction  
                    WAIT10   
 lda #$ce
                    STa      VIA_cntl                     ;/BLANK low and /ZERO low 
                    stb      <VIA_port_a 
                    ldd      #$0401
                    sta      <VIA_port_b 
                    stb      <VIA_port_b 
 clra
                    pulu     b,x,pc 


SMVB_continue_yd4_yStays_single ;#isfunction  
SMVB_continue_yStays_single                               ;#isfunction  
                    stx      <VIA_port_b                  ; 5 
                    sta      <VIA_t1_cnt_hi               ; 4 
                    ADD_NOPS  
                    pulu     b,x,pc 


SMVB_continue7_single                                  ;#isfunction  
                    SET_Y_INT  
                    Y_DELAY                               ; 4 
                    stx      <VIA_port_b                  ; 5 
                    sta      <VIA_t1_cnt_hi               ; 4 
                    ADD_NOPS                              ; 21 
; this is one pulu cycle more!
; thus ADD_NOPS can be one cycle less!
; minus 6!
                    pulu     b,x                          ; 5+3 
SMVB_continue6_single                                  ;#isfunction  
                    SET_Y_INT  
                    Y_DELAY                               ; 4 
                    stx      <VIA_port_b                  ; 5 
                    sta      <VIA_t1_cnt_hi               ; 4 
                    ADD_NOPS                              ; 21 
                    pulu     b,x                          ; 5+3 
SMVB_continue5_single                                  ;#isfunction  
                    SET_Y_INT  
                    Y_DELAY                               ; 4 
                    stx      <VIA_port_b                  ; 5 
                    sta      <VIA_t1_cnt_hi               ; 4 
                    ADD_NOPS                              ; 21 
                    pulu     b,x                          ; 5+3 
SMVB_continue4_single                                  ;#isfunction  
                    SET_Y_INT  
                    Y_DELAY                               ; 4 
                    stx      <VIA_port_b                  ; 5 
                    sta      <VIA_t1_cnt_hi               ; 4 
                    ADD_NOPS                              ; 21 
                    pulu     b,x                          ; 5+3 
SMVB_continue3_single                                  ;#isfunction  
                    SET_Y_INT  
                    Y_DELAY                               ; 4 
                    stx      <VIA_port_b                  ; 5 
                    sta      <VIA_t1_cnt_hi               ; 4 
                    ADD_NOPS                              ; 21 
                    pulu     b,x                          ; 5+3 
SMVB_continue2_single                                  ;#isfunction  
                    SET_Y_INT  
                    Y_DELAY                               ; 4 
                    stx      <VIA_port_b                  ; 5 
                    sta      <VIA_t1_cnt_hi               ; 4 
                    ADD_NOPS                              ; 21 
                    pulu     b,x                          ; 5+3 
; continue uses same shift  
SMVB_continue_single                                   ;#isfunction  
                    stb      <VIA_port_a                  ; 4 shift not changed, move might also be a draw 
; y is inherently known to be == old_x, y was set to 0 by generator
SMVB_continue_newY_eq_oldX_single:                       ;#isfunction  
                    sta      <VIA_port_b                  ; 4 
                    Y_DELAY                               ; 4 
                    stx      <VIA_port_b                  ; 5 
                    sta      <VIA_t1_cnt_hi 
                    ADD_NOPS  
                    pulu     b,x,pc 


SMVB_continue_yd4_single                                   ;#isfunction  
                    stb      <VIA_port_a                  ; 4 shift not changed, move might also be a draw 
; y is inherently known to be == old_x, y was set to 0 by generator
SMVB_continue_yd4_newY_eq_oldX_single:                       ;#isfunction  
                    sta      <VIA_port_b                  ; 4 
                    Y_DELAY_4                             ; 4 
                    stx      <VIA_port_b                  ; 5 
                    sta      <VIA_t1_cnt_hi 
                    ADD_NOPS  
                    pulu     b,x,pc


SMVB_continue_single_sj                                   ;#isfunction  
                    stb      <VIA_port_a                  ; 4 shift not changed, move might also be a draw 
; y is inherently known to be == old_x, y was set to 0 by generator
SMVB_continue_newY_eq_oldX_single_sj:                     ;#isfunction  
                    sta      <VIA_port_b                  ; 4 
                    Y_DELAY                               ; 4 
                    stx      <VIA_port_b                  ; 5 
                    sta      <VIA_t1_cnt_hi 
                    ADD_NOPS_NOU                          ; reduced by ldu ,u - 5 cycles 
                    ldu      ,u 
                    pulu     b,x,pc 
; continue uses same shift
; y is inherently known to be == x, 
SMVB_continue_yd4_yEqx_single ;#isfunction 
                    SET_Y_INT  
                    Y_DELAY_HALF_4                          ; 4 
                    inc      <VIA_port_b 
                    sta      <VIA_t1_cnt_hi 
                    ADD_NOPS  
                    pulu     b,x,pc 

SMVB_continue_yEqx_single                                 ;#isfunction  
                    SET_Y_INT  
                    Y_DELAY_HALF                          ; 4 
 

                    inc      <VIA_port_b 
                    sta      <VIA_t1_cnt_hi 
                    ADD_NOPS  
                    pulu     b,x,pc 
SMVB_continue_tripple                                     ;#isfunction  
                    SET_Y_INT  
                    Y_DELAY                               ; 4 
                    stx      <VIA_port_b                  ; 5 
                    sta      <VIA_t1_cnt_hi 
                    ADD_NOPS  
                    jmp      cont2 

SMVB_continue_quadro                                      ;#isfunction  
                    SET_Y_INT  
                    Y_DELAY                               ; 4 
                    stx      <VIA_port_b                  ; 5 
                    sta      <VIA_t1_cnt_hi 
                    ADD_NOPS  
                    jmp      cont3 
SMVB_continue_hex ;#isfunction 
                    SET_Y_INT  
                    Y_DELAY                               ; 4 
                    stx      <VIA_port_b                  ; 5 
                    sta      <VIA_t1_cnt_hi 
                    ADD_NOPS  
                    jmp      cont5 
SMVB_continue_octo                                        ;#isfunction  
                    SET_Y_INT  
                    Y_DELAY                               ; 4 
                    stx      <VIA_port_b                  ; 5 
                    sta      <VIA_t1_cnt_hi 
                    ADD_NOPS  
                    WAIT_BEFORE  
cont7 
                    WAIT_AFTER  
                    clr      <VIA_t1_cnt_hi 
                    ADD_NOPS  
                    WAIT_BEFORE  
cont6 
                    WAIT_AFTER  
                    clr      <VIA_t1_cnt_hi 
                    ADD_NOPS  
                    WAIT_BEFORE  
cont5 
                    WAIT_AFTER  
                    clr      <VIA_t1_cnt_hi 
                    ADD_NOPS  
                    WAIT_BEFORE  
cont4 
                    WAIT_AFTER  
                    clr      <VIA_t1_cnt_hi 
                    ADD_NOPS  
                    WAIT_BEFORE  
cont3 
                    WAIT_AFTER  
                    clr      <VIA_t1_cnt_hi 
                    ADD_NOPS  
                    WAIT_BEFORE  
cont2 
                    WAIT_AFTER  
                    clr      <VIA_t1_cnt_hi 
                    ADD_NOPS  
                    jmp      SMVB_repeat_same 

SMVB_repeat_same                                          ;#isfunction  
                    pulu     b,x 
                    clr      <VIA_t1_cnt_hi 
                    ADD_NOPS  
                    pulu     pc 
SMVB_continue_double                                      ;#isfunction  
                    SET_Y_INT  
                    Y_DELAY                               ; 4 
                    stx      <VIA_port_b                  ; 5 
                    sta      <VIA_t1_cnt_hi 
                    ADD_NOPS  
                    jmp      SMVB_repeat_same 
SMVB_continue_yd4_double;#isfunction 
                    SET_Y_INT  
                    Y_DELAY_4                               ; 4 
                    stx      <VIA_port_b                  ; 5 
                    sta      <VIA_t1_cnt_hi 
                    ADD_NOPS  
                    jmp      SMVB_repeat_same 

SMVB_startMove_yd4_single ;#isfunction 
SMVB_startMove_single:                                    ;#isfunction  
                    SET_Y_INT  
                    INIT_MOVE  
                    ADD_NOPS  
                    pulu     b,x,pc 
SMVB_startMove_single_sj:                                 ;#isfunction  
                    SET_Y_INT  
                    ldu      ,u 
 
                    INIT_MOVE_SJ  
                    ADD_NOPS_NOU                          ; reduced by ldu ,u - 5 cycles 
                    pulu     b,x,pc 

SMVB_startMove_yd4_single_sj:                                 ;#isfunction  
                    SET_Y_INT  
                    ldu      ,u 
                    INIT_MOVE_SJ  
                    ADD_NOPS_NOU                          ; reduced by ldu ,u - 5 cycles 
                    pulu     b,x,pc 


SMVB_startMove_yd4_double:                                    ;#isfunction  
SMVB_startMove_double:                                    ;#isfunction  
                    SET_Y_INT  
                    INIT_MOVE  
                    ADD_NOPS  
                    jmp      SMVB_repeat_same2 
SMVB_startDraw_tripple ;#isfunction 
                    SET_Y_INT  
                    ldb      #SHITREG_POKE_VALUE          ; 2 
                    stb      <VIA_shift_reg               ; 4 
 DELAY_NONE
                    stx      <VIA_port_b                  ; 5 
                    sta      <VIA_t1_cnt_hi               ; 4 
                    ADD_NOPS  
                    jmp      cont2 

SMVB_startDraw_double ;#isfunction 
                    SET_Y_INT  
                    ldb      #SHITREG_POKE_VALUE          ; 2 
                    stb      <VIA_shift_reg               ; 4 
 DELAY_NONE
                    stx      <VIA_port_b                  ; 5 
                    sta      <VIA_t1_cnt_hi               ; 4 
                    ADD_NOPS  
                    jmp      SMVB_repeat_same2 

SMVB_startMove_tripple ;#isfunction 
                    SET_Y_INT  
                    INIT_MOVE  
                    ADD_NOPS  
                    bra      move2 

SMVB_startMove_quadro ;#isfunction 
                    SET_Y_INT  
                    INIT_MOVE  
                    ADD_NOPS  
                    bra      move3 

move3 
                    WAIT_AFTER  
                    clr      <VIA_t1_cnt_hi 
                    ADD_NOPS  
                    WAIT_BEFORE  
move2 
                    WAIT_AFTER  
                    clr      <VIA_t1_cnt_hi 
                    ADD_NOPS  
                    jmp      SMVB_repeat_same2 

SMVB_repeat_same2                                           ;#isfunction  
                    pulu     b,x 
                    clr      <VIA_t1_cnt_hi 
                    ADD_NOPS  
                    pulu     pc 
SMVB_startMove_double_sj                                  ;#isfunction  
                    SET_Y_INT  
                    ldu      ,u 
                    INIT_MOVE_SJ  
                    ADD_NOPS  
                    brn      0 
                    brn      0 
                    clr      <VIA_t1_cnt_hi 
                    ADD_NOPS                              ; reduced by ldu ,u - 5 cycles 
                    pulu     b,x, pc 
SMVB_startMove_yStays_single                              ;#isfunction  
                    INIT_MOVE  
                    ADD_NOPS  
                    pulu     b,x,pc 
SMVB_startMove_yStays_single_sj 
                    ldu      ,u 
                    INIT_MOVE_SJ  
                    ADD_NOPS_NOU                          ; reduced by ldu ,u - 5 cycles 
                    pulu     b,x,pc 
; assuming b = 1
SMVB_startDraw_yStays_single                              ;#isfunction  
                    stb      <VIA_shift_reg               ; 4 
 DELAY_NONE
                    stx      <VIA_port_b                  ; 5 
                    sta      <VIA_t1_cnt_hi               ; 4 
                    ADD_NOPS  
                    pulu     b,x,pc 
; assume b contains SHIFT

SMVB_startDraw_xyStays_single                             ;#isfunction  
                    stb      <VIA_shift_reg 
                    sta      <VIA_t1_cnt_hi 
                    ADD_NOPS  
                    pulu     b,x,pc 
SMVB_startDraw_yStays_single_sj                           ;#isfunction  
;                    ldb      #SHITREG_POKE_VALUE          ; 2 
                    stb      <VIA_shift_reg               ; 4 
 DELAY_NONE
                    stx      <VIA_port_b                  ; 5 
                    sta      <VIA_t1_cnt_hi               ; 4 
                    ADD_NOPS_NOU                          ; reduced by ldu ,u - 5 cycles 
                    ldu      ,u 
                    pulu     b,x,pc 
SMVB_startDraw_yd4_single;#isfunction 
SMVB_startDraw_single:                                    ;#isfunction  
                    SET_Y_INT  
                    ldb      #SHITREG_POKE_VALUE          ; 2 
                    stb      <VIA_shift_reg               ; 4 
 DELAY_NONE
                    stx      <VIA_port_b                  ; 5 
                    sta      <VIA_t1_cnt_hi               ; 4 
                    ADD_NOPS  
                    pulu     b,x,pc 
SMVB_startDraw_single_sj 
                    SET_Y_INT  
                    ldb      #SHITREG_POKE_VALUE          ; 2 
                    stb      <VIA_shift_reg               ; 4 
 DELAY_NONE
                    stx      <VIA_port_b                  ; 5 
                    sta      <VIA_t1_cnt_hi               ; 4 
                    ADD_NOPS_NOU                          ; reduced by ldu ,u - 5 cycles 
                    ldu      ,u 
                    pulu     b,x,pc 
SMVB_startDraw_yEqx_single_sj                             ;#isfunction  
                    SET_Y_INT  
                    ldb      #$01 
                    stb      <VIA_shift_reg               ; 4 - ASSUMING SHITREG_POKE_VALUE = 1 
 DELAY_NONE
                    stb      <VIA_port_b 
                    sta      <VIA_t1_cnt_hi 
                    ADD_NOPS_NOU                          ; reduced by ldu ,u - 5 cycles 
                    ldu      ,u 
                    pulu     b,x,pc 
SMVB_startDraw_yEqx_single                                ;#isfunction  
SMVB_startDraw_yd4_yEqx_single                                ;#isfunction  
                    SET_Y_INT  
                    ldb      #$01 
                    stb      <VIA_shift_reg               ; 4 - ASSUMING SHITREG_POKE_VALUE = 1 
 DELAY_NONE
                    stb      <VIA_port_b 
                    sta      <VIA_t1_cnt_hi 
                    ADD_NOPS  
                    pulu     b,x,pc 
SMVB_startMove_yEqx_single                                ;#isfunction  
                    SET_Y_INT  
 Y_DELAY_HALF
                    inc      <VIA_port_b 
                    sta      <VIA_t1_cnt_hi 
                    sta      <VIA_shift_reg               ; 4 
                    ADD_NOPS  
                    pulu     b,x,pc 
SMVB_startMove_yd4_yEqx_single                                ;#isfunction  
                    SET_Y_INT  
 Y_DELAY_HALF_4
                    inc      <VIA_port_b 
                    sta      <VIA_t1_cnt_hi 
                    sta      <VIA_shift_reg               ; 4 
                    ADD_NOPS  
                    pulu     b,x,pc 
SMVB_startMove_xyStays_single ;#isfunction 
                    sta      <VIA_t1_cnt_hi 
                    stb      <VIA_shift_reg 
                    ADD_NOPS  
                    pulu     b,x,pc 

SMVB_startMove_yEqx_single_sj                             ;#isfunction  
                    SET_Y_INT  
                    WAIT2    
 DELAY_NONE
                    inc      <VIA_port_b 
                    sta      <VIA_t1_cnt_hi 
                    sta      <VIA_shift_reg               ; 4 
                    ADD_NOPS_NOU                          ; reduced by ldu ,u - 5 cycles 
                    ldu      ,u 
                    pulu     b,x,pc 
SMVB_startMove_yd4_yEqx_single_sj                             ;#isfunction  

                    SET_Y_INT  
                    WAIT2    
 Y_DELAY_HALF_4
                    inc      <VIA_port_b 
                    sta      <VIA_t1_cnt_hi 
                    sta      <VIA_shift_reg               ; 4 
                    ADD_NOPS_NOU                          ; reduced by ldu ,u - 5 cycles 
                    ldu      ,u 
                    pulu     b,x,pc 
SMVB_startMove_newY_eq_oldX_single;#isfunction  
                    sta      <VIA_port_b                  ; 4 
                    INIT_MOVE  
                    ADD_NOPS                          ; reduced by ldu ,u - 5 cycles 
                    pulu     b,x,pc 
SMVB_startMove_newY_eq_oldX_single_sj ;#isfunction  
                    sta      <VIA_port_b                  ; 4 
                    ldu      ,u 
                    INIT_MOVE_SJ  
                    ADD_NOPS_NOU                          ; reduced by ldu ,u - 5 cycles 
                    pulu     b,x,pc 
SMVB_startDraw_newY_eq_oldX_single:                       ;#isfunction  
                    sta      <VIA_port_b                  ; 4 
                    ldb      #SHITREG_POKE_VALUE 
                    stb      <VIA_shift_reg               ; 4 
 DELAY_NONE
                    stx      <VIA_port_b                  ; 5 
                    sta      <VIA_t1_cnt_hi 
                    ADD_NOPS  
                    pulu     b,x,pc 
SMVB_startDraw_newY_eq_oldX_single_sj:                    ;#isfunction  
                    sta      <VIA_port_b                  ; 4 
                    ldb      #SHITREG_POKE_VALUE 
                    stb      <VIA_shift_reg               ; 4 
 DELAY_NONE
                    stx      <VIA_port_b                  ; 5 
                    sta      <VIA_t1_cnt_hi 
                    ADD_NOPS_NOU                          ; reduced by ldu ,u - 5 cycles 
                    ldu      ,u 
                    pulu     b,x,pc 


SMVB_lastDraw_rts                                         ;#isfunction  
SMVB_FlagWait: 
                    bitb     <VIA_int_flags 
                    beq      SMVB_FlagWait 
                    sta      <VIA_shift_reg 
SMVB_rts:                                                 ;#isfunction  
                    ldb      gameScale 
                    LDA      #$CC 
                    STA      VIA_cntl                     ;/BLANK low and /ZERO low 
                    stB      VIA_t1_cnt_lo 
; and ensures integrators are clean (good positioning!)
;                    ldd      #0 
                    stx      <VIA_port_b 
                    rts      

;// TODO CHECK WITH SHIELD + CO
SMVB_lastDraw_rts_stay                                    ;#isfunction  
;                    SET_Y_INT  
;                    Y_DELAY_HALF                          ; 4 
;                    ldd      #$40E0 
;                    stx      <VIA_port_b                  ; 5 
;                    clr      <VIA_t1_cnt_hi 
;                    ADD_NOPS  
SMVB_FlagWait3:                                           ;#isfunction  
                    bitb     <VIA_int_flags 
                    beq      SMVB_FlagWait3 
                    sta      <VIA_shift_reg 
                    nop      2 
                    rts      

SMVB_lastMove_rts_stay                                    ;#isfunction  
                    lda      #$40 
SMVB_FlagWait3_2: 
                    bita     <VIA_int_flags 
                    beq      SMVB_FlagWait3_2 
                    rts      

; todo 
; last draw could contain $F in A
; than load not needed - attention 
; when cycles are not done for load, than shift value might be needed 2 higher!
; also in X could be some sensible value in X for one of the other 
SMVB_lastDraw_rts2                                        ;#isfunction  
;                    ldb      #$f0 
                    nop      
                    stb      <VIA_shift_reg 
                    lda      gameScale 
                    sta      <VIA_t1_cnt_lo 
; extended on purpose to gain one cycle of time
; to reset to 
; a) swithc light off before zeroing
; b) zero
SMVB_rts2:                                                ;#isfunction  
                    ldb      #$cc 
                    STb      >VIA_cntl                    ;/BLANK low and /ZERO low 
                    stx      >VIA_port_b 
; nop 10
                    puls     d,pc                         ; (D = y,x, pc = next object) 
calibrationZero                                          ;#isfunction  
                    ldb      #$CC 
                    stb      <VIA_cntl 
                    ldd      #$8100 
                    std      <VIA_port_b 
                    dec      <VIA_port_b 
                    ldb      >calibrationValue
                    lda      #$82 
                    std      <VIA_port_b 
                    ldd      #$83FF 
                    stb      <VIA_port_a 
                    sta      <VIA_port_b 
                    rts      

; assumes b = 0
SMVB_Shift0_Intensity:                                      ;#isfunction  
                    WAIT14   
                    stb      <VIA_shift_reg 
                    sta      <VIA_port_a 
                    ldd      #$0401 
                    sta      <VIA_port_b 
                    stb      <VIA_port_b 
                    pulu     b,x,pc 

;***************************************************************************
; DATA SECTION
;***************************************************************************
_SMVB_animData 
 DW AnimList_0 ; list of all single vectorlists in this
 DW AnimList_1
 DW AnimList_2
 DW AnimList_3
 DW AnimList_4
 DW 0

AnimList_0
	db  $7B, $01,  $4A
	dw SMVB_continue_single
	db -$31, $01,  $00
	dw SMVB_startDraw_single
	db  $00, $01,  $31
	dw SMVB_startMove_newY_eq_oldX_single ; y was  $00, now 0
	db  SHITREG_POKE_VALUE, $01, -$64
	dw SMVB_startDraw_yStays_single; y was  $00, now SHIFT Poke
	db -$61, $01,  $00
	dw SMVB_continue_single
	db  $00, $01, -$2E
	dw SMVB_startMove_newY_eq_oldX_single ; y was  $00, now 0
	db  SHITREG_POKE_VALUE, $01,  $61
	dw SMVB_startDraw_yStays_single; y was  $00, now SHIFT Poke
	db -$64, $01,  $00
	dw SMVB_continue_single
	db  $31, $01,  $00
	dw SMVB_startMove_single
	db SHITREG_POKE_VALUE, $01,  $31
	dw SMVB_startDraw_newY_eq_oldX_single ; y was  $00, now SHIFT
	db  $00, $01, -$7B
	dw SMVB_startMove_double
	db  SHITREG_POKE_VALUE, $01,  $31
	dw SMVB_startDraw_yStays_single; y was  $00, now SHIFT Poke
	db -$31, $01,  $00
	dw SMVB_startMove_single
	db  $31, $01,  $00
	dw SMVB_startDraw_single
	db  $33, $01,  $33
	dw SMVB_continue4_single
	db  $2E, $01,  $00
	db  $00, $01, -$33
	db  $64, $01,  $00
	db -$31, $01,  $00
	dw SMVB_startMove_single
	db SHITREG_POKE_VALUE, $01, -$31
	dw SMVB_startDraw_newY_eq_oldX_single ; y was  $00, now SHIFT
	db  $40, $00,  $00
	dw SMVB_lastDraw_rts
AnimList_1
	db -$31, $01, -$31
	dw SMVB_continue_yEqx_single; y is -$31
	db  $62, $01,  $00
	dw SMVB_startDraw_single
	db  $00, $01, -$4A
	dw SMVB_continue7_single
	db  $4A, $01,  $00
	db  $00, $01,  $4A
	db -$4A, $01,  $00
	db  $00, $01,  $62
	db  $4A, $01,  $00
	db  $00, $01,  $4A
	db -$4A, $01,  $00
	dw SMVB_continue7_single
	db  $00, $01, -$4A
	db -$62, $01,  $00
	db  $00, $01,  $4A
	db -$4A, $01,  $00
	db  $00, $01, -$4A
	db  $4A, $01,  $00
	db  $00, $01, -$62
	dw SMVB_continue5_single
	db -$4A, $01,  $00
	db  $00, $01, -$4A
	db  $4A, $01,  $00
	db  $00, $01,  $4A
	db  $40, $00,  $00
	dw SMVB_lastDraw_rts
AnimList_2
	db -$63, $01, -$63
	dw SMVB_continue_yEqx_single; y is -$63
	db  $63, $01,  $00
	dw SMVB_startDraw_double
	db  $00, $01,  $63
	dw SMVB_continue_double
	db -$63, $01,  $00
	dw SMVB_continue_double
	db  $00, $01, -$63
	dw SMVB_continue_double
	db  $40, $00,  $00
	dw SMVB_lastDraw_rts
AnimList_3
	db -$5E, $01, -$5E
	dw SMVB_continue_yEqx_single; y is -$5E
	db  $00, $01,  $5E
	dw SMVB_startDraw_double
	db  $5E, $01,  $00
	dw SMVB_continue_double
	db  $00, $01, -$5E
	dw SMVB_continue_double
	db -$5E, $01,  $00
	dw SMVB_continue_double
	db  $27, $01,  $27
	dw SMVB_startMove_yEqx_single; y is  $27
	db  $00, $01,  $6E
	dw SMVB_startDraw_single
	db  $00, $01,  $00
	dw SMVB_startMove_newY_eq_oldX_single ; y was  $6E, now 0
	db SHITREG_POKE_VALUE, $01, -$6E
	dw SMVB_startDraw_newY_eq_oldX_single ; y was  $00, now SHIFT
	db -$6E, $01,  $00
	dw SMVB_continue4_single
	db  $6E, $01,  $6E
	db -$6E, $01,  $00
	db  $6E, $01, -$6E
	db  $40, $00,  $00
	dw SMVB_lastDraw_rts
AnimList_4
	db -$31, $01,  $31
	dw SMVB_continue_single
	db  $62, $01, -$62
	dw SMVB_startDraw_single
	db  $00, $01,  $62
	dw SMVB_startMove_single
	db -$62, $01, -$62
	dw SMVB_startDraw_yEqx_single; y is -$62
	db  $40, $00,  $00
	dw SMVB_lastDraw_rts
