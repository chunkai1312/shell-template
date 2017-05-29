#!/bin/bash

PROGRAM=$(basename $0)
VERSION='0.0.0'

usage () {
  cat <<- _EOF_

					Usage: $PROG_NAME [options]

					Options:

					  -h, --help     output usage information
					  -v, --version  output the version number
					  -p, --print    print "Hello World!"

					_EOF_
	return
}

print () {
	echo 'Hello World!'
}

# process command line options

while [[ -n $1 ]]; do
	case $1 in
		-h | --help)		usage
										exit
										;;
		-v | --version)	echo $VERSION
										exit
										;;
		-p | --print)		print
										exit
										;;
		*)							usage >&2
										exit 1
										;;
	esac
	shift
done
