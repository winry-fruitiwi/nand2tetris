// fills any word black in SCREEN

@R0
D=M        // Retrieve word
@SCREEN
A=A+D
M=-1       // Fill word black

(END)
  @END
  0;JMP
