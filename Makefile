# Copyright kongfl888 <kongfl888@outlook.com>
# Licensed to the public under the GNU General Public License v3.

include $(TOPDIR)/rules.mk

PKG_NAME:=check-network
PKG_VERSION:=1.0.0
PKG_RELEASE:=2
PKG_MAINTAINER:=kongfl888 <kongfl888@outlook.com>
PKG_LICENSE:=GPL-3.0

include $(INCLUDE_DIR)/package.mk

define Package/check-network
   SECTION:=utils
   CATEGORY:=Utilities
   TITLE:=Check Network for OpenWrt
   DEPENDS:=+jsonfilter
   MAINTAINER:=kongfl888 <kongfl888@outlook.com>
   PKGARCH:=all
endef

define Package/$(PKG_NAME)/description
Check Network for OpenWrt
endef

define Build/Compile
endef

define Package/$(PKG_NAME)/install
$(CP) ./files/* $(1)
endef

define Package/$(PKG_NAME)/postinst
#!/bin/sh
chmod a+x $${IPKG_INSTROOT}/etc/init.d/check-network >/dev/null 2>&1
chmod a+x $${IPKG_INSTROOT}/usr/bin/check_network >/dev/null 2>&1
exit 0
endef

define Package/$(PKG_NAME)/postrm
#!/bin/sh
endef

$(eval $(call BuildPackage,$(PKG_NAME)))
