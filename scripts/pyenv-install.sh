#!/bin/bash
wget https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer -O install-pyenv.sh
bash install-pyenv.sh
tail -n +2 scripts/load-pyenv.sh >> ~/.bashrc

