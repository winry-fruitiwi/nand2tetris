// If any key is pushed down, fill the first word black

// Pseudocode:
//   if KBD register != 0, goto ON // no key pushed
//   if KBD register == 0, goto OFF // key pushed
//   (ON)
//     set first word to -1 // black
//     goto line 0 // repeat
//
//   (OFF)
//     set first word to 0 // white
//     goto line 0 // repeat


// decide between on and off
@KBD
D=M
@ON
D;JNE // goto ON if D != 0
@OFF
D;JEQ // goto OFF if D == 0

// if a key is pushed, goto ON
(ON)
  @SCREEN
  M=-1
  @0
  0;JMP

// otherwise, goto OFF
(OFF)
  @SCREEN
  M=0
  @0
  0;JMP
