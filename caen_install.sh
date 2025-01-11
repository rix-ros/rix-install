#!/bin/bash

set -e

module load gcc/11
export CC=$(which gcc)
export CXX=$(which g++)

echo "Building and installing RIX libraries ..."

cd rix-util
chmod +x install.sh
./install.sh || { echo "Failed to install rix-util"; exit 1; }

cd ../rix-msg
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
nvm install 22
python3 -m venv venv
source venv/bin/activate
pip install  wheel
chmod +x install.sh
./install.sh || { echo "Failed to install rix-msg"; deactivate; exit 1; }
deactivate

cd ../rix-ipc
chmod +x install.sh
./install.sh || { echo "Failed to install rix-ipc"; exit 1; }

cd ../rix-core
chmod +x install.sh
./install.sh || { echo "Failed to install rix-core"; exit 1; }

cd ../rix-py
chmod +x install.sh
./install.sh || { echo "Failed to install rix-py"; exit 1; }

cd ../rix-js
chmod +x install.sh
./install.sh || { echo "Failed to install rix-js"; exit 1; }

cd ..

echo "Installation complete"
