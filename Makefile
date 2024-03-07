# Copyright (C) 2020-2024 LALA
# This code is open to use, but that doesn't mean it's free.
# So if you want to sell this code and the software its compiled, its illegal
# Anyone has the right to sue illegal users
# GPLv3

include $(TOPDIR)/rules.mk

PKG_NAME:=mentohust
PKG_VERSION:=0.3.1
PKG_RELEASE:=1
PKG_LICENSE:=GPLv3

MAKE_PATH:=src

include $(INCLUDE_DIR)/package.mk

define Package/$(PKG_NAME)
  SECTION:=net
  CATEGORY:=Network
  SUBMENU:=Ruijie 802.1x Client
  TITLE:=A Ruijie v3 (v4) Client Daemon
  URL:=https://github.com/AutoCONFIG/mentohust-openwrt
  DEPENDS:=+libpcap
endef

ifdef CONFIG_USE_GLIBC
  TARGET_LDFLAGS+= -ldl
endif

define Package/$(PKG_NAME)/install
	$(INSTALL_DIR) $(1)/usr/sbin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/src/mentohust $(1)/usr/sbin/
endef

$(eval $(call BuildPackage,$(PKG_NAME)))
