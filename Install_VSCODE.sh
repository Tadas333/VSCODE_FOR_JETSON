#! /bin/bash

VERSION=1.85.2
wget -N -O vscode-linux-deb.arm64.deb https://update.code.visualstudio.com/$VERSION/linux-deb-arm64/stable
sudo apt install ./vscode-linux-deb.arm64.deb

# Install useful Python packages
sudo apt-get install python3-pip -y
# Install a Python linter
pip3 install pylint
# Install a Python formatter
pip3 install black

# Install the Python extension for Visual Studio Code
# Extension name is ms-python.python
code --install-extension ms-python.python --force