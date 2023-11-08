#!/bin/bash


mkdir -p files/root

kr_URL="https://raw.githubusercontent.com/lxiaya/openwrt-onecloud/main/expansion/1.sh"

wget -qO- $kr_URL > files/root/1.sh

chmod +x files/root/1.sh

echo "# Put your custom commands here that should be executed once
# the system init finished. By default this file does nothing.

bash /root/1.sh
exit 0">files/etc/rc.local
