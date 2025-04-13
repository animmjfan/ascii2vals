# this is my first makefile and it's completely uneccery at the moment lol

CXX = g++
CPPFLAGS = 
prefix := /usr/local

ascii2vals: ascii2vals.cpp

ascii2vals.cpp:
	echo "This should already exist..."

clean:
	rm -f ascii2vals

install:
	mv ascii2vals ${prefix}
