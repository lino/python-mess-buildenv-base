#!/bin/bash
# Initiailizes environment variables for pyenv
export PATH="/root/.pyenv/bin:$PATH"                                                                                   
eval "$(pyenv init -)"                                                                                                                                                                                                                         
eval "$(pyenv virtualenv-init -)"  
