# ascii2vals

## What this does
This program simpily takes characters and converts them to decimal, hexadecimal, octal, and binary  

## How to install
First make sure to copy this repo and cd into it using one of the following depending on your git setup:

Https:
```
git clone https://github.com/animmjfan/ascii2vals.git
cd ascii2vals
```
SSH: *for developers*
```
git clone git@github.com:animmjfan/ascii2vals.git
cd ascii2vals
```

There is multiple scripts for installing. Let's take a look

### Installing using makefile
First make sure make is installed, then run the following commands:
```
make
make install
```
Note: depending on your permissions you may need to run `sudo make install`

> [!TIP]
> You can add prefix=PATH to the second command to make it install to another location (replacing PATH with a directory to install to)  
> The same is true with CXX for your compiler and CPPFLAGS for the compiler flags

### Installing using install.sh
First make sure the permissions are correct and install.sh has execute, then run the following command:
```
./install.sh
```
Note: depending on your permissions you may need to run `sudo ./install.sh`

> [!TIP]
> You can add --prefix=PATH to the command to make it install relative to PATH

## How to uninstall
### Uninstall using make file
To uninstall run:
```
make clean
```
optional syntax (required if non-default location):
```
make clean prefix=PATH
```
> [!NOTE]
> You may need to use sudo depending on your permissions

### Uninstall using install.sh
To uninstall run:
```
./install.sh --uninstall
```
optional syntax (required if non-default location):
```
./install.sh --prefix=PATH --uninstall
```
> [!NOTE]
> You may need to use sudo depending on your permissions

## How to install and uninstall manually
### Manual install
> [!IMPORTANT]
> You should already have the repo cloned

1. Compile using your preferred c++ compiler (I'll show the default g++):
```
g++ ascii2vals.cpp -o ascii2vals
```
2. Copy the file to a bin in your $PATH (I'll show /usr/local/bin):
```
cp ascii2vals /usr/local/bin/
```
or
```
sudo cp ascii2vals /usr/local/bin/
```

### Manual uninstall
First you'll need to locate ascii2vals:

you can do this by running the following:
```
which ascii2vals
```
or just remebering where you put it

Now that you have the path, simply run this:
```
rm -f path/to/binary
```
and you may need to prepend `sudo`
> [!NOTE]
> Replace path/to/binary with the path to the binary

> This is my first c++ program and first time using makefile
