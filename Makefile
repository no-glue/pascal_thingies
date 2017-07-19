#
# Makefile
# thingies
# 
CC=fpc
FLAGS=-g
LIB=thingies.pas
TST_FCTR=tstFactorial.pas
TST_PRM=tstIsPrime.pas

all: lib tst_fctr tst_prm

lib: ${LIB}
	${CC} ${FLAGS} ${LIB}
tst_fctr: ${TST_FCTR}
	${CC} ${FLAGS} ${TST_FCTR}
tst_prm: ${TST_PRM}
	${CC} ${FLAGS} ${TST_PRM}
