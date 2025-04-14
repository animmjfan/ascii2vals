#!/bin/bash

prefix=/usr/local
for arg in "$@"; do
    case $arg in
    	--prefix=*)
		prefix="${arg#*=}"
		shift
		;;
		--uninstall)
		if [ -e $(realpath ${prefix})/bin/ascii2vals ]; then
			rm -f $(realpath ${prefix})/bin/ascii2vals
		else
			echo "$(realpath ${prefix})/bin/ascii2vals doesn't exist"
		fi
		if [ -e ascii2vals ]; then
			rm -f ascii2vals
		else
			echo "ascii2vals doesn't exist in this directory"
		fi
		echo "Done"
		exit 0
		;;
        *)
		echo "Unknown argument: $arg"
		exit 1
		;;
    esac
done
if [ ! -e $prefix ]; then
	echo "What the fuck is a '$prefix'"
	echo "Make it?[yN]: "
	read ans
	if [[ $ans == "y" ]]; then
		mkdir $prefix
		if [ $? -eq 0 ]; then
			echo "$prefix made"
		fi
	else
		exit 1
	fi
elif [ -f $prefix ]; then
	echo "Don't install me to a file!! I don't like it!! wahhh"
	exit 1
fi
BINDIR=$(realpath ${prefix})/bin/
if [ ! -d $BINDIR ]; then
	echo "$BINDIR doesn't exist, making it..."
	echo "mkdir $BINDIR"
	mkdir $BINDIR
	echo -e "\n"
fi

echo "Using install.sh"
echo "installing to $prefix"

echo "Compiling using gcc (if it fails check if you have g++ installed)"
g++ ascii2vals.cpp -o ascii2vals
if [ $? -eq 0 ]; then
	echo "finished compiling"
else
	echo "fail"
	exit 1
fi
echo "Copying compiled binary to $BINDIR (if it fails check permissions or use sudo/root)"
cp ascii2vals $BINDIR
if [ $? -eq 0 ]; then
	echo "finsished copying"
else
	echo "fail"
	exit 1
fi
echo "Done"
exit 0