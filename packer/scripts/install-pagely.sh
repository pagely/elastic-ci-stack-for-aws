#!/bin/bash
set -eu -o pipefail

echo "Adding extra utils"
sudo yum install -y htop


echo "Adding a swapfile creation script"
sudo curl -Lsf -o /usr/local/bin/swap.sh \
  "https://raw.githubusercontent.com/chetankapoor/swap/master/swap.sh"

sudo chmod +x /usr/local/bin/swap.sh
