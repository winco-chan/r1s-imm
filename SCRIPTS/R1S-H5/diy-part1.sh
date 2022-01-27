#!/bin/bash
#
# Copyright (c) 2021 F-T-Otaku 
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/F-T-Otaku/Actions-ImmortalWrt-R1S-H5
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
sed -i 's/^#\(.*passwall\)/\1/' feeds.conf.default
#sed -i 's/^#\(.*vlmcsd\)/\1/' feeds.conf.default
#sed -i 's/^#\(.*openwrt-vlmcsd\)/\1/' feeds.conf.default

# Add a feed source
echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
#echo 'src-git vlmcsd https://github.com/mchome/luci-app-vlmcsd' >>feeds.conf.default
#echo 'src-git penwrt-vlmcsd https://github.com/mchome/openwrt-vlmcsd' >>feeds.conf.default
sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
#git clone https://github.com/small-5/luci-app-adblock-plus package/luci-app-adblock-plus
