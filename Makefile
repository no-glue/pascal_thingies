#
# Makefile
# thingies
# 
CC=fpc
FLAGS=-g
LIB=thingies.pas
TST_FCTR=tstFactorial.pas
TST_PRM=tstIsPrime.pas
TST_MSG=tstMessage.pas
TST_MRG=tstMerge.pas

all: lib tst_fctr tst_prm tst_msg tst_mrg

lib: ${LIB}
	${CC} ${FLAGS} ${LIB}
tst_fctr: ${TST_FCTR}
	${CC} ${FLAGS} ${TST_FCTR}
tst_prm: ${TST_PRM}
	${CC} ${FLAGS} ${TST_PRM}
tst_msg: ${TST_MSG}
	${CC} ${FLAGS} ${TST_MSG}
tst_mrg: ${TST_MRG}
	${CC} ${FLAGS} ${TST_MRG}
