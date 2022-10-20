#!/bin/sh

## check for sudo/root
if ! [ $(id -u) = 0 ]; then
  echo "This script must run with sudo, try again..."
  exit 1
fi

printf "Updating repo\n"
apt update

# tools
echo "Install git"
apt install git -y

# clone project
echo "Get Script..."
rm -rf install || true
git clone https://github.com/sunuazizrahayu/linux-desktop-environment.git install

# execute script
bash install/debian11/install.sh

# clean dir
printf "\nCleaning dir.."
rm -rf install || true
