//Goal: find the largest of two numbers stored in R1 and R2
//and put the larger of these into R3

//compute R1 - R2
//if this value is negative, thus R2 is larger, put value R2 into R3
//else, R1 is larger (or same size), therefore put value of R1 into R3

//load the memory address R1 into A register
@R1

//take the value of R1 and put it in D
D = M

//load the memory address R2 into the A register
@R2

//make computation
D = D - M

//Is R2 larger?
@R1Larger
D;JGT

//ELSE
@R2Larger
0;JMP

(R1Larger)
@R1
D = M
@R3
M = D
@End
0;JMP

(R2Larger)
@R2
D = M
@R3
M = D

//terminate program
(End)
@End
0;JMP