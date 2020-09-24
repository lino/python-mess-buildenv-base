#!/bin/bash
# post-install.sh
# Usage: post-install.sh
# Sets up the python environment after the python install.
# Tools like pipenv or tox should be installed here.
echo "Running post install script"
pip install pipenv tox tox-pipenv
echo "Post install done"
