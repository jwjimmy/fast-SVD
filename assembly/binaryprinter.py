##num = 0b11
##print num
##print bin(num)
##
num2 = 0xffffffff
print num2
##print bin(num2)
##
##o = "0"
##s = "1"
##num3 = int(s*32, 2)
##print num3
##print bin(num3)
##
##print bin(0b1110+0b1111)
##
##num4 = int(o*15+s+o*16,2)
##print bin(num4)
##print num4


def invert(i):
    bins = bin(i)[2:len(bin(i))]
    ibins = ""+"1"*(32-len(bins))
    for c in bins:
        if c == '0':
            ibins += '1'
        else:
            ibins += '0'
    inv = int(ibins,2)
    inv += 1
    return inv

num = 0x70000000 #largest whole number
print num
print invert(num) #prints two's complement in 32-bit splendor, for MARS


print (0xffffffff)/2
