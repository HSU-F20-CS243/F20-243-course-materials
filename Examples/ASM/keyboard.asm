@direction
M = 0
@y_coord
M = 0
@x_coord
M = 0
@i
M = 0

(:Main)

//start at top of screen
@SCREEN
D = A
@x_coord
M = D

//offset by 1
@y_coord
D = M
@x_coord
M = M + D



//initialize counter to 25
@25
D = A
@i
M = D

(:DrawLoop)
@i
D = M

//draw single line
@x_coord
A = M
D = -1
M = D

//increment line
D = A
@32
D = D + A
@x_coord
M = D

//subtract 1 from i, loop if necessary
@i
D = M - 1
M = D
@:DrawLoop
D;JGT

//sniff for keyboard input


//left arrow
@KBD
D = M
@130
D = D - A
@:LeftArrowPressed
D;JEQ

//rigt arrow
@KBD
D = M
@132
D = D - A
@:RightArrowPressed
D;JEQ

//no input
@:Main
0;JMP

(:LeftArrowPressed)
@y_coord
D = M - 1
M = D
@:Main
0;JMP

(:RightArrowPressed)
@y_coord
D = M + 1
M = D
@:Main
0;JMP