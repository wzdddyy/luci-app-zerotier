# SPDX-License-Identifier: GPL-3.0-only
#
# Copyright (C) 2022 ImmortalWrt.org

include $(TOPDIR)/rules.mk

LUCI_TITLE:=LuCI for Zerotier
LUCI_DEPENDS:=+zerotier

include $(TOPDIR)/feeds/luci/luci.mk

define Package/luci-app-zerotier/install
	$(call Package/luci-app-zerotier/install/default,$(1))
	$(INSTALL_BIN) ./root/etc/init.d/luci-zerotier $(1)/etc/init.d/luci-zerotier
	chmod 755 $(1)/etc/init.d/luci-zerotier
	$(INSTALL_BIN) ./root/etc/uci-defaults/40_luci-zerotier $(1)/etc/uci-defaults/40_luci-zerotier
	chmod 755 $(1)/etc/uci-defaults/40_luci-zerotier
endef

# call BuildPackage - OpenWrt buildroot signature