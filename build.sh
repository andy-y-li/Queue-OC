#! /bin/sh
if [ $# -lt 1 ] ; then
	echo "Usage: $0 file1 file2 ..."
	exit 1
fi

echo "Bulding the file: $*..."
gcc -framework Foundation $* -o test
