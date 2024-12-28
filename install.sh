#!/bin/bash

set -e

echo "Building and installing RIX libraries ..."

cd rix-util
chmod +x install.sh
./install.sh || { echo "Failed to install rix-util"; exit 1; }

cd ../rix-msg
python3 -m venv venv
source venv/bin/activate
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
rm -rf rix-util rix-msg rix-ipc rix-core rix-py rix-js

echo "Installation complete"