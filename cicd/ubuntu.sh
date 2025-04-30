#!/usr/bin/env sh 

show () {
	echo "ubuntu.sh: $1"
}

# installing dependencies
show "Installing texlive"
sudo apt install texlive
show "Installing latexmk"
sudo tlmgr install latexmk

SCRIPT_DIR="$(dirname "$(readlink -f "$0")")"
export REPO="$SCRIPT_DIR/.."

cmake -P "$SCRIPT_DIR/cmake/cd.cmake"
