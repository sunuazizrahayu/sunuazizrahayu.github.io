#!/bin/sh

## check for sudo/root
if ! [ $(id -u) = 0 ]; then
  echo "This script must run with sudo, try again..."
  exit 1
fi

echo "Updating repo"
apt update

# tools
echo "Install git"
apt install git

# clone project
echo "Get Script..."
rm -rf install || true
git clone https://github.com/sunuazizrahayu/linux-desktop-environment.git install

# execute script
bash install/debian11/install.sh
