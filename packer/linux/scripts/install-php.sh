#!/bin/bash
set -e
sudo amazon-linux-extras install php7.4 -y
sudo yum install -y php-xml php-posix php-curl php-composer
