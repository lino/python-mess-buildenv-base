#!/bin/bash
# download and install latest geckodriver for linux or mac.
# required for selenium to drive a firefox browser.
# original script from https://gist.github.com/cgoldberg/4097efbfeb40adf698a7d05e75e0ff51

install_dir="/usr/local/bin"
json=$(curl -s https://api.github.com/repos/mozilla/geckodriver/releases/latest)
url=$(echo "$json" | jq -r '.assets[].browser_download_url | select(contains("linux64"))')
wget $url
tar -xzf *.tar.gz
chmod +x geckodriver
mv geckodriver "$install_dir"
echo "installed geckodriver binary in $install_dir"
