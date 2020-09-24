#!/bin/bash

# pthon-install.sh
# Usage:
# python-install.sh VERSION
# Installs the specified python version VERSION

display_usage() {
    echo "This script installs the specified python version"
    echo "Usage: $0 VERSION"
    echo "Version must be one of the versions listed in pyenv install --list"
}

if [  $# -le 0 ] 
then 
		display_usage
		exit 1
fi

set -e
echo "Attempting to install python version $1"
CONFIGURE_OPTS=--enable-shared pyenv install $1
echo "Switching global version to $1"
pyenv global $1
echo "Done"
scripts/post-install.sh

