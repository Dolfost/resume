#!/usr/bin/env sh 

# installing dependencies
sudo apt install texlive
sudo tlmgr install latexmk

SCRIPT_DIR="$(dirname "$(readlink -f "$0")")"
export REPO="$SCRIPT_DIR/.."

cmake -P "$SCRIPT_DIR/cmake/cd.cmake"
