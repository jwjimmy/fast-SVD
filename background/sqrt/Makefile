# Makefile for square root sample.exe
CC = gcc
LD = gcc
CFLAGS = -O2 -Wall -pedantic -ansi -c
LDFLAGS = -lm -O2 -o

# Treat NT and non-NT windows the same
ifeq ($(OS),Windows_NT)
	OS = Windows
endif

ifeq ($(OS),Windows)
	EXE = .exe
	DEL = del
	CFLAGS = -O2 -Wall -ansi -c -DBUILD_WINDOWS
	OBJS = sample.o sqrt.o gettimeofday.o
else	#assume Linux/Unix
	EXE =
	DEL = rm
	OBJS = sample.o sqrt.o
endif

objs:	sqrt.c sqrt.h
	avr-objdump -S $<

all:		sample$(EXE)

sample$(EXE):	$(OBJS)
		$(LD) $^ $(LDFLAGS) $@

sample.o:	sample.c sqrt.h
		$(CC) $(CFLAGS) $<

sqrt.o:		sqrt.c sqrt.h
		$(CC) $(CFLAGS) $<

gettimeofday.o:	gettimeofday.c
		$(CC) $(CFLAGS) $<

clean:
		$(DEL) *.o
		$(DEL) sample$(EXE)
