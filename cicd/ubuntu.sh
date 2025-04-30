#!/usr/bin/env sh 

show () {
	echo "ubuntu.sh: $1"
}

# installing dependencies
sudo apt install texlive latexmk

SCRIPT_DIR="$(dirname "$(readlink -f "$0")")"
export REPO="$SCRIPT_DIR/.."

cmake -P "$SCRIPT_DIR/cmake/cd.cmake"
