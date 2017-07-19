#
# Makefile
# thingies
# 
CC=fpc
FLAGS=-g
LIB=thingies.pas
TST_FCTR=tstFactorial.pas

all: lib tst_fctr

lib: ${LIB}
	${CC} ${FLAGS} ${LIB}
tst_fctr: ${TST_FCTR}
	${CC} ${FLAGS} ${TST_FCTR}
