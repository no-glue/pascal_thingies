#
# Makefile
# thingies
# 
CC=fpc
FLAGS=-g
LIB=thingies.pas

all: lib

lib: ${LIB}
	${CC} ${FLAGS} ${LIB}
