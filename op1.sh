#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
echo 'src-git passwall_packages https://github.com/lxiaya/openwrt-passwall-packages;main' >>feeds.conf.default
#echo 'src-git smpackage https://github.com/kenzok8/small-package' >>feeds.conf.default
svn co https://github.com/lxiaya/openwrt-onecloud/trunk/target/linux/meson target/linux/meson
echo 'src-git passwall2 https://github.com/xiaorouji/openwrt-passwall2;main' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall.git;main' >>feeds.conf.default
