// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
//
// This program only needs to handle arguments that satisfy
// R0 >= 0, R1 >= 0, and R0*R1 < 32768.

// Put your code here.

// pseudocode:
//   initialize product, multiplied, multiplier, i
//   LOOP:
//     if i>=multiplier, goto stop
//     product += multiplied
//     i++
//     repeat (goto loop)
//
//   STOP:
//     put variables in correct places
//
//   END:
//     NOP slide protection

// initializing the variables
@R0
D=M
@multiplied
M=D
@R1
D=M
@multiplier
M=D
@product
M=0
@i
M=1 // on my drawing pad I have i=1, whoops
