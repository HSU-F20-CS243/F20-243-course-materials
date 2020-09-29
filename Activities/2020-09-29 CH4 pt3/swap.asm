//Program: swap R1 and R2

//define variable
@temp

//put R1 into temp
@R1
D = M
@temp
M = D

//put R2 into R1
@R2
D = M
@R1
M = D

//put temp into R2
@temp
D = M
@R2
M = D

//terminate your program
(:End)
@:End //using colon to prefix region name is a nice
      //way to tell if we're loading a PC location or
      //a MEM location
0;JMP