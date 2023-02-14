# Copyright (C) 2020-2022 Taiga
# This code is open to use, but that doesn't mean it's free.
# So if you want to sell this code and the software its compiled, its illegal
# Anyone has the right to sue illegal users
# GPLv3

include $(TOPDIR)/rules.mk

PKG_NAME:=mentohust-KyleRicardo
PKG_VERSION:=0.3.1
PKG_RELEASE:=1
PKG_LICENSE:=GPLv3

include $(INCLUDE_DIR)/package.mk

define Package/$(PKG_NAME)
  SECTION:=net
  CATEGORY:=Network
  DEPENDS:=+libpcap
  TITLE:=A Ruijie v3 (v4) Client Daemon
  URL:=https://github.com/AutoCONFIG/mentohust-openwrt
  SUBMENU:=Ruijie 802.1x Client
endef

define Build/Prepare
	$(CP) ./src/* $(PKG_BUILD_DIR)/
	$(SED) 's/dhclient/udhcpc -i/g' $(PKG_BUILD_DIR)/myconfig.c
endef

define Build/Compile
	$(MAKE) -C $(PKG_BUILD_DIR)/ \
		$(TARGET_CONFIGURE_OPTS) \
		CFLAGS="$(filter-out -O%,$(TARGET_CFLAGS)) -O3" \
		CPPFLAGS="$(TARGET_CPPFLAGS)"  \
		LDFLAGS="$(TARGET_LDFLAGS) -ldl"
endef

define Package/$(PKG_NAME)/install
	$(INSTALL_DIR) $(1)/usr/sbin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/mentohust $(1)/usr/sbin/
endef

$(eval $(call BuildPackage,$(PKG_NAME)))
