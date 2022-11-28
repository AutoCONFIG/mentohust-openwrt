# Copyright (C) 2020-2022 Taiga
# This code is open to use, but that doesn't mean it's free.
# So if you want to sell this code and the software its compiled, its illegal
# Anyone has the right to sue illegal users
# GPLv3

include $(TOPDIR)/rules.mk

PKG_NAME:=mentohust
PKG_VERSION:=0.3.1
PKG_RELEASE:=1
PKG_LICENSE:=GPLv3

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/AutoCONFIG/mentohust.git
PKG_SOURCE_SUBDIR:=$(PKG_NAME)-$(PKG_VERSION)
PKG_SOURCE_VERSION:=ecbca7de8322152616867fb79defb7e6ef95ff78
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz

include $(INCLUDE_DIR)/package.mk

define Package/$(PKG_NAME)
  SECTION:=net
  CATEGORY:=Network
  DEPENDS:=+libpcap
  TITLE:=A Ruijie v3 (v4) Client Daemon
  URL:=https://github.com/AutoCONFIG/mentohust-openwrt
  SUBMENU:=Ruijie 802.1x Client
endef

define Build/Configure
	$(SED) 's/dhclient/udhcpc -i/g' $(PKG_BUILD_DIR)/src/myconfig.c
	(cd $(PKG_BUILD_DIR);./autogen.sh;./configure CFLAGS=-O3 CXXFLAGS=-O3 CPPFLAGS=-O3)
endef

define Package/$(PKG_NAME)/install
	$(INSTALL_DIR) $(1)/usr/sbin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/src/mentohust $(1)/usr/sbin/
	$(INSTALL_DIR) $(1)/etc
	$(INSTALL_CONF) $(PKG_BUILD_DIR)/src/mentohust.conf $(1)/etc/mentohust.conf
endef

$(eval $(call BuildPackage,$(PKG_NAME)))
