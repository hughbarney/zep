CC      = cc
CFLAGS += -O -std=c11 -Wall -pedantic
#CFLAGS  = -O -Wall
LIBS    = -lncurses
LD      = cc
CP      = cp
MV      = mv
RM      = rm

zep : zep.c
	$(LD) $(CFLAGS) -o zep zep.c $(LIBS)

clean:
	-$(RM) zep zep.o

install:
	-$(CP) zep $(HOME)/bin/zep
