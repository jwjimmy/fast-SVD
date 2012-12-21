import fileinput
import sys
import re

filename = str(sys.argv[1]) # accept the name of the assembly file as a command line argument
reader = fileinput.input(filename) # read in the file

count = 0 # we want to count the number of instructions for later

# new compiler design: we save space by grouping together instructions with similar structure
is_arithmetic = ["add", "sub", "mul", "div"]
is_shifty = ["sllv", "srlv", "srav"]

for line in reader: # iterate through each line of assembly
    words = line.split() # string tokenize with space
    numwords = len(words)
    instrs = []

    if words[0] != "#" and numwords >= 3: # all instructions must have 3 or more arguments

        #R type instructions

        if words[0] in is_arithmetic:

            rsbin = bin(int(words[2][1:]))
            rs = str(rsbin)[2:].zfill(5)
            rtbin = bin(int(words[3][1:]))
            rt = str(rtbin)[2:].zfill(5)
            rdbin = bin(int(words[1][1:]))
            rd = str(rdbin)[2:].zfill(5)

            if words[0] == "add":
                instrbin = "000000" + rs + rt + rd + "00000" + "100000"
            elif words[0] == "sub":
                instrbin = "000000" + rs + rt + rd + "00000" + "100010"
            elif words[0] == "mul":
                instrbin = "000000" + rs + rt + rd + "00000" + "011000"
            elif words[0] == "div":
                instrbin = "000000" + rs + rt + rd + "00000" + "011010"

            instrs.append(instrbin)


        elif words[0] in is_shifty:

            rsbin = bin(int(words[2][1:]))
            rs = str(rsbin)[2:].zfill(5)
            rdbin = bin(int(words[1][1:]))
            rd = str(rdbin)[2:].zfill(5)
            shamtbin = bin(int(words[3]))
            shamt = str(shamtbin)[2:].zfill(5)

            if words[0] == "sllv":
                instrbin = "000000" + rs + "00000" + rd + shamt + "000000"
            elif words[0] == "srlv":
                instrbin = "000000" + rs + "00000" + rd + shamt + "000010"
            elif words[0] == "srav":
                instrbin = "000000" + rs + "00000" + rd + shamt + "000011"

            instrs.append(instrbin)


        elif words[0] == "and":
            funct = bin(int('20',16))

        elif words[0] == "or":
            funct = bin(int('20',16))

        elif words[0] == "slt":
            funct = bin(int('2a',16))

        elif words[0] == "beq": # opcode is 4 in base 16
            op = bin(int('4',16))

        elif words[0] == "j": # opcode is 2 in base 16
            op = bin(int('2',16))


        #I type instructions

        elif words[0] == "li":
            rdbin = bin(int(words[1][1:]))
            rd = str(rdbin)[2:].zfill(5)
            immbin = bin(int(words[2][0:]))
            imm = str(immbin)[2:].zfill(16)
            instrbin = "001111" + rd + "00000" + imm
            instrs.append(instrbin)

        elif words[0] == "sw":
            rsbin = bin(int(words[1][1:]))
            rs = str(rsbin)[2:].zfill(5)
            complicated = str(words[2])
            ind_paren = complicated.find('(')
            first_part_bin = bin(int(complicated[:ind_paren]))
            first_part = str(first_part_bin)[2:].zfill(5)
            int_parencl = complicated.find(')')
            secon_part = bin(int(complicated[ind_paren+1+1:len(complicated)-1],2))[2:].zfill(16)
            instrbin = "101011" + first_part + rs + secon_part
            instrs.append(instrbin)

    for instr in instrs:
        count = count + 1
        print hex(int(instr,2))[2:].zfill(8) # this is the print statement

for i in range(65536-count): # the CPU accepts exactly 2^16 entries in its instruction memory
    print str(0).zfill(8) # fill the hex file with the missing entries