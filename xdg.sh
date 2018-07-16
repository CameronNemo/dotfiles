#!/bin/sh

set -e

import=0

function usage() {
	echo "Usage: $(basename $0) [-i]"
	exit 1
}

test "$?" -le "1" || usage
test -z "$1" || test "$1" = "-i" && import=1 || usage

if test "$import" = "1"; then
	str="$XDG_CONFIG_HOME/file file"
else
	str="file $XDG_CONFIG_HOME/file"
fi

cd xdg

find . -type f -print0 | xargs -0 -I file install -m 0644 $str