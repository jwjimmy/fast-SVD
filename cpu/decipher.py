add_1 = bin(int('00011020',16))[2:].zfill(32)
li_1 = bin(int('3c000005',16))[2:].zfill(32)
li_2 = bin(int('3c010006',16))[2:].zfill(32)
li_3 = bin(int('3c020006',16))[2:].zfill(32)
sw_1 = bin(int('ac000000',16))[2:].zfill(32)
sllv_1 = bin(int('00410080',16))[2:].zfill(32)

def rtype(instr):
	print hex(int(instr[0:6],2)) + " " + hex(int(instr[6:11],2)) + " " + hex(int(instr[11:16],2)) + " " + hex(int(instr[16:21],2)) + " " + hex(int(instr[21:26],2)) + " " + hex(int(instr[26:32],2))
	print instr[0:6] + " " + instr[6:11] + " " + instr[11:16] + " " + instr[16:21] + " " + instr[21:26] + " " + instr[26:32]
	print instr
	print "opcode: " + hex(int(instr[0:6],2))
	print "rs: " + hex(int(instr[6:11],2))
	print "rt: " + hex(int(instr[11:16],2))
	print "rd: " + hex(int(instr[16:21],2))
	print "shamt: " + hex(int(instr[21:26],2))
	print "funct: " + hex(int(instr[26:32],2))

def itype(instr):
	print hex(int(instr[0:6],2)) + " " + hex(int(instr[6:11],2)) + " " + hex(int(instr[11:16],2)) + " " + hex(int(instr[16:32],2))
	print instr[0:6] + " " + instr[6:11] + " " + instr[11:16] + " " + instr[16:32]
	print instr
	print "opcode: " + hex(int(instr[0:6],2))
	print "rs: " + hex(int(instr[6:11],2))
	print "rt: " + hex(int(instr[11:16],2))
	print "imm: " + hex(int(instr[16:32],2))
