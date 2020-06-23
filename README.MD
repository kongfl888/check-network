# OpenWRT 网络检测助手

[![Build](https://github.com/kongfl888/check-network/workflows/Build/badge.svg)](https://github.com/kongfl888/check-network/releases)

### 编译方式

拷贝到 ``package`` 目录

运行 make menuconfig

选择Utilities -> check-network

然后

``make package/check-network/compile V=99``

文件在bin中寻

你也可以在[Releases](https://github.com/kongfl888/check-network/releases) 里找到ipk文件下载并安装进你的openwrt。

### 使用姿势

自启开关

``/etc/init.d/check-network`` enable/disable

运行开关

``/etc/init.d/check-network`` restart/stop

使用环境

``wan``/``lan`` 要求至少各一，至于其他环境或者复杂点的环境等以后有空再完善
