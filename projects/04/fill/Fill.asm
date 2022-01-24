// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.


// Pseudocode:
//   if KBD register != 0, goto ON
//   if KBD register == 0, goto OFF
//
//   (ON)
//     set full screen to -1
//     goto 0
//   (OFF)
//     set full screen to 0
//     goto 0

@i
M=0

// decide between on and off
@KBD
D=M
@ON
D;JNE // goto ON if D != 0
@OFF
D;JEQ // goto OFF if D == 0

// if a key is pushed, goto ON
(ON)
  @8192    // length of builtin SCREEN chip
  D=A
  @i
  D=D-M    // D=8192-i
  @0
  D;JLE

  @i
  D=M      // where are we?
  @SCREEN
  A=A+D
  M=-1
  @i
  M=M+1
  @ON
  0;JMP

// otherwise, goto OFF
(OFF)
  @8192    // length of builtin SCREEN chip
  D=A
  @i
  D=D-M    // D=8192-i
  @0
  D;JLE

  @i
  D=M      // where are we?
  @SCREEN
  A=A+D
  M=0
  @i
  M=M+1
  @OFF
  0;JMP

