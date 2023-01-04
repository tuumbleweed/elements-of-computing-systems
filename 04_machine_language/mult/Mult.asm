// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
//
// This program only needs to handle arguments that satisfy
// R0 >= 0, R1 >= 0, and R0*R1 < 32768.

// we are going to move R1 to another memory location to subtract from it
@R1
D=M
@i
M=D
// We are going to use it to store multiplication result in R2
@2
M=0
(LOOP)
// subtract 1 from our counter
@i
MD=M-1
// if counter is negative - jump to the end
@END
D;JLT
// add R0 to the sum
@0
D=M
@2
M=M+D
// repeat
@LOOP
0;JMP
(END)
// infinite loop, this is how we terminate our program
@END
0;JMP
