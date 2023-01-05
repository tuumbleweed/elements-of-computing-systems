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

(RESTART)
@SCREEN
D=A
// save currentWord value to the @currentWord address minus one
@currentWord
M=D-1
(MAINLOOP)
// Set the D register to the max ram value
@KBD
D=A
// calculate the difference between currentWord and max ram value
@currentWord
D=D-M
@RESTART
D;JLE
// increment currentWord by 1
@currentWord
M=M+1
// read the keyboard output
@KBD
D=M

// since we don't have access to zr of ALU (1 if output is zero (or 16 way))
// we are going to use the jumps to create a makeshift "if" statement
// if keyboard is not pressed - skip to SKIPMINUSONE
@SKIPMINUSONE
D;JLE
D=-1
(SKIPMINUSONE)
// one of those has to jump, the other - has to skip jumping
// as a result - D register will be 0 or -1 depending on whether keyboard was pressed
// if keyboard is not pressed - skip to SKIPZERO
@SKIPZERO
D;JLT
D=0
(SKIPZERO)

// paint a word with black(-1) or white(0) color.
// The color is determined by the value of D register
@currentWord
A=M
M=D
// repeat
@MAINLOOP
0;JMP
(END)
@END
0;JMP
