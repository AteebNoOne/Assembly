.data
string1: .asciiz ">>>>>>>>>>>>>>>WELCOME TO MY PHARMACY<<<<<<<<<<<<<<<<<\n "
string2: .asciiz "Medincine list:\n"
string3: .asciiz "------------Medicine name-------Strength--------Price--\n"
string4: .asciiz "1)\t\tRigix\t\t40mg\t\tRs 67\n"
string5: .asciiz "2)\t\tRisek\t\t20mg\t\tRs 25\n"
string6: .asciiz "3)\t\tZertech\t\t50mg\t\tRs 150\n"
string7: .asciiz "4)\t\tFlagyle\t\t10mg\t\tRs 100\n"
string8: .asciiz "5)\t\tAmoxile\t\t40mg\t\tRs 60\n"
string9: .asciiz "6)\t\tBrufeene\t25mg\t\tRs 20\n"
string10: .asciiz "7) Exit\n"
string11: .asciiz "Select Your Option:"
op1: .asciiz "YOU SELECTED Rigix. How many you want?:"
op2: .asciiz "YOU SELECTED Risek. How many do you want?:"
op3: .asciiz "YOU SELECTED Zertech. How many do you want?:"
op4: .asciiz "YOU SELECTED Flagyle. How many do you want?"
op5: .asciiz "YOU SELECTED Amoxile. How many do you want?"
op6: .asciiz "YOU SELECTED Brufeene. How many do you want?"
cname: .asciiz "Enter name:"
bill: .asciiz "Your Bill Is: Rs."
ppcounter: .asciiz "\nPlease Pay It At Counter To Receive Your Medicine "
choice: .byte  #for user input of choice
cust: .space 60 #for user input of customer name

.text 
err:
li $v0, 4
la $a0, string1
syscall

li $v0, 4
la $a0, string2
syscall

li $v0, 4
la $a0, string3
syscall

li $v0, 4
la $a0, string4
syscall

li $v0, 4
la $a0, string5
syscall

li $v0, 4
la $a0, string6
syscall

li $v0, 4
la $a0, string7
syscall

li $v0, 4
la $a0, string8
syscall

li $v0, 4
la $a0, string9
syscall

li $v0, 4
la $a0, string10
syscall

li $v0, 4
la $a0, string11
syscall

li $v0,5 #take in input
syscall
move $t0,$v0

li $t1, 1
li $t2,2
li $t3,3
li $t4,4
li $t5,5
li $t6,6
li $t7,7
blt $t0,$t1,err
beq $t0,$t1,o1 # if input is equals to 1 go to o1 (option 1)
beq $t0,$t2,o2
beq $t0,$t3,o3
beq $t0,$t4,o4
beq $t0,$t5,o5
beq $t0,$t6,o6
beq $t0,$t7,end
bgt $t0,$t7,err 
syscall 

o1:
li $v0, 4 #HOW MANY YOU WANT?
la $a0, op1
syscall
li $v0,5 #take in input medicine count
syscall
move $t0,$v0 
li $t1,67
mul $t2,$t0,$t1 #multiplying user input with 67

li $v0, 4 #Asking user input
la $a0, cname
syscall 

li $v0,8 #take in input
la $a0, cust #load byte space into address
li $a1, 60 # allot the byte space for string
move $t3,$a0 #save string to t0
syscall
la $a0, cust #reload byte space to primary address
move $a0,$t3 # primary address = t0 address (load pointer)
li $v0,4 # print string
syscall
li $v0, 4 
la $a0, bill
syscall
li $v0, 1
move $a0,$t2
syscall
li $v0, 4 
la $a0, ppcounter
syscall
li $v0, 10
syscall

o2: #option 2
li $v0, 4 #HOW MANY YOU WANT?
la $a0, op2
syscall
li $v0,5 #take in input medicine count
syscall
move $t0,$v0 
li $t1,25
mul $t2,$t0,$t1 #multiplying user input with 67

li $v0, 4 #Asking user input
la $a0, cname
syscall 

li $v0,8 #take in input
la $a0, cust #load byte space into address
li $a1, 60 # allot the byte space for string
move $t3,$a0 #save string to t0
syscall
la $a0, cust #reload byte space to primary address
move $a0,$t3 # primary address = t0 address (load pointer)
li $v0,4 # print string
syscall
li $v0, 4 
la $a0, bill
syscall
li $v0, 1
move $a0,$t2
syscall
li $v0, 4 
la $a0, ppcounter
syscall
li $v0, 10
syscall

o3:
li $v0, 4 #HOW MANY YOU WANT?
la $a0, op3
syscall
li $v0,5 #take in input medicine count
syscall
move $t0,$v0 
li $t1,150
mul $t2,$t0,$t1 #multiplying user input with 67

li $v0, 4 #Asking user input
la $a0, cname
syscall 

li $v0,8 #take in input
la $a0, cust #load byte space into address
li $a1, 60 # allot the byte space for string
move $t3,$a0 #save string to t0
syscall
la $a0, cust #reload byte space to primary address
move $a0,$t3 # primary address = t0 address (load pointer)
li $v0,4 # print string
syscall
li $v0, 4 
la $a0, bill
syscall
li $v0, 1
move $a0,$t2
syscall
li $v0, 4 
la $a0, ppcounter
syscall
li $v0, 10
syscall
o4:
li $v0, 4 #HOW MANY YOU WANT?
la $a0, op4
syscall
li $v0,5 #take in input medicine count
syscall
move $t0,$v0 
li $t1,100
mul $t2,$t0,$t1 #multiplying user input with 67

li $v0, 4 #Asking user input
la $a0, cname
syscall 

li $v0,8 #take in input
la $a0, cust #load byte space into address
li $a1, 60 # allot the byte space for string
move $t3,$a0 #save string to t0
syscall
la $a0, cust #reload byte space to primary address
move $a0,$t3 # primary address = t0 address (load pointer)
li $v0,4 # print string
syscall
li $v0, 4 
la $a0, bill
syscall
li $v0, 1
move $a0,$t2
syscall
li $v0, 4 
la $a0, ppcounter
syscall
li $v0, 10
syscall
o5:
li $v0, 4 #HOW MANY YOU WANT?
la $a0, op5
syscall
li $v0,5 #take in input medicine count
syscall
move $t0,$v0 
li $t1,60
mul $t2,$t0,$t1 #multiplying user input with 67

li $v0, 4 #Asking user input
la $a0, cname
syscall 

li $v0,8 #take in input
la $a0, cust #load byte space into address
li $a1, 60 # allot the byte space for string
move $t3,$a0 #save string to t0
syscall
la $a0, cust #reload byte space to primary address
move $a0,$t3 # primary address = t0 address (load pointer)
li $v0,4 # print string
syscall
li $v0, 4 
la $a0, bill
syscall
li $v0, 1
move $a0,$t2
syscall
li $v0, 4 
la $a0, ppcounter
syscall
li $v0, 10
syscall
o6:
li $v0, 4 #HOW MANY YOU WANT?
la $a0, op6
syscall
li $v0,5 #take in input medicine count
syscall
move $t0,$v0 
li $t1,20
mul $t2,$t0,$t1 #multiplying user input with 67

li $v0, 4 #Asking user input
la $a0, cname
syscall 

li $v0,8 #take in input
la $a0, cust #load byte space into address
li $a1, 60 # allot the byte space for string
move $t3,$a0 #save string to t0
syscall
la $a0, cust #reload byte space to primary address
move $a0,$t3 # primary address = t0 address (load pointer)
li $v0,4 # print string
syscall
li $v0, 4 
la $a0, bill
syscall
li $v0, 1
move $a0,$t2
syscall
li $v0, 4 
la $a0, ppcounter
syscall
li $v0, 10
syscall

# ----------------------
# Terminate the program
end:
li $v0, 10
syscall
