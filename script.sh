#!/bin/bash

PROGRAM=$(basename $0)
VERSION='0.0.0'

usage () {
  echo "
  Usage: $PROGRAM [options]

  Options:

    -h, --help     output usage information
    -v, --version  output the version number
    -p, --print    print \"Hello World!\"
  "
}

print () {
	echo 'Hello World!'
}

# process command line options

while [[ -n $1 ]]; do
	case $1 in
    -h | --help)    usage
                    exit
                    ;;
    -v | --version)	echo $VERSION
                    exit
                    ;;
		-p | --print)   print
                    exit
                    ;;
		*)              usage >&2
                    exit 1
                    ;;
	esac
	shift
done
