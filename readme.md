## Installation
To download the RIX repositories, run `download.sh`. This script requires you to enter a valid GitHub PAT becuase the repositories are private.
```bash
./download.sh
```

To build and install the RIX libraries and their dependencies, run the `install.sh` script.
```bash
. ./install.sh
```
This script will install Node.JS through nvm.

To create the symbolic links for the RIX executables, run the `link.sh` script.
```bash
sudo ./link.sh
```
