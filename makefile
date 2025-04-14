# this is my first makefile and it's completely uneccery at the moment lol

CXX = g++
CPPFLAGS = 
prefix ?= /usr/local
BINDIR = $(prefix)/bin

ascii2vals: ascii2vals.cpp

ascii2vals.cpp:
	echo "This should already exist..."

clean:
	if [ -e ascii2vals ]; then rm -f ascii2vals; fi
	if [ -e ${BINDIR}/ascii2vals ]; then rm -f ascii2vals; fi

install:
	cp ascii2vals ${BINDIR}
