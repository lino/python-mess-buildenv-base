# python-mess-buildenv-base

Base image for build environment. Will be used to install a python version on top.

## Usage

Use this as your base image and run `scripts/python-install.sh` with the required version as only parameter.

## Customization

If you need to customize the environment, change `scripts/post-install.sh`

## Example Dockerfile for Python 3.7.8

    FROM linoio/python-mess-buildenv-base:latest
    RUN scripts/python-install.sh 3.7.8
    
