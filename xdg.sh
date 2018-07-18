#!/bin/sh

set -e

import=0

function usage() {
	echo "Usage: $(basename $0) [-i]"
	exit 1
}

test "$?" -le "1" || usage

if test "$1" = "-i"; then
	str="$XDG_CONFIG_HOME/file file"
else
	str="file $XDG_CONFIG_HOME/file"
fi

cd xdg

find . -type f -print0 | xargs -0 -I file install -m 0644 $str
