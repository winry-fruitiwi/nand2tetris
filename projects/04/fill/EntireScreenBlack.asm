// Pseudocode:
//   i=1
//
//   LOOP:
//     if i>=8192, goto END
//     SCREEN[i]=-1
//     goto LOOP
//     
//   END:
//     goto line 0


@i
M=0

(LOOP)
  @8192    // length of builtin SCREEN chip
  D=A
  @i
  D=D-M    // D=8192-i
  @END
  D;JLT

  @i
  D=M      // where are we?
  @SCREEN
  A=A+D
  M=-1
  @i
  M=M+1
  @LOOP
  0;JMP

(END)
  @END
  0;JMP
