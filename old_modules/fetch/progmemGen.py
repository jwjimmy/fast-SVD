f = open("progmem.hex", "wb")
f.writelines(map(lambda x: hex(x).strip("0x").zfill(8)+'\n', range(1<<16)))
f.flush()
