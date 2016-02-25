calc:
	g++ calc.cc -o calc
	./calc
tempcalc:
	g++ tempcalc.cc -o tempcalc
	./tempcalc
test build:add.cc
	@echo building testrun...
	g++ add.cc -o testbin
testrun:testbuild
	./testbin
clean:
	rm -f testbin
	rm -f *.o
	rm -f *~
all:clean testrun
PHONY:calc tempcalc
