#!/usr/bin/env sh 

# installing dependencies
sudo apt install texlive

SCRIPT_DIR="$(dirname "$(readlink -f "$0")")"
export REPO="$SCRIPT_DIR/.."

cmake -P "$SCRIPT_DIR/cmake/cd.cmake"
