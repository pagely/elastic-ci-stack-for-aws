#!/bin/bash
set -eu -o pipefail

echo "Adding extra utils"
sudo yum install -y htop


echo "Adding a swapfile creation script"
sudo curl -Lsf -o /usr/local/bin/swap.sh \
  "https://raw.githubusercontent.com/chetankapoor/swap/master/swap.sh"

sudo chmod +x /usr/local/bin/swap.sh

echo "Adding storage init script"
sudo curl -Lsf -o /usr/local/bin/init-storage.sh \
    "https://gist.githubusercontent.com/jeichorn/18eeb0e088f8eb0a16db0191b0e2d2e0/raw/8401e6c3ae805860b6a4283a76a97d0b40ee430a/init-storage.sh"

sudo chmod +x /usr/local/bin/init-storage.sh
