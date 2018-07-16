# Simple makefile for test purposes

OBJS = src/main.o

all: testprog

testprog: $(OBJS)
	g++ $(OBJS) -o testprog

clean:
	rm testprog
	rm $(OBJS)
