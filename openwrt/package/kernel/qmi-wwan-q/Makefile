#
# Copyright (C) 2008-2012 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#
#DEPENDS:=+kmod-cdc-wdm +kmod-usbcore +kmod-usbnet

include $(TOPDIR)/rules.mk
include $(INCLUDE_DIR)/kernel.mk

PKG_NAME:=qmi-wwan-q
PKG_RELEASE:=1

include $(INCLUDE_DIR)/package.mk

define KernelPackage/qmi-wwan-q
  SUBMENU:=Qmi WWAN support
  TITLE:=Custom qmi wwan
  FILES:=$(PKG_BUILD_DIR)/qmi-wwan-q.ko
  DEPENDS:=+cdc-wdm +usbcore +usbnet
  KCONFIG:=
endef

define KernelPackage/qmi-wwan-q/description
 Kernel module to register a custom qmi-wwan-q.
endef

define Package/$(PKG_NAME)/extra_provides
	echo 'cdc-wdm';\
	echo 'usbcore';\
	echo 'usbnet';
endef
	

EXTRA_KCONFIG:= \
	CONFIG_QMI_WWAN_Q_CUSTOM=m

EXTRA_CFLAGS:= \
	$(patsubst CONFIG_%, -DCONFIG_%=1, $(patsubst %=m,%,$(filter %=m,$(EXTRA_KCONFIG)))) \
	$(patsubst CONFIG_%, -DCONFIG_%=1, $(patsubst %=y,%,$(filter %=y,$(EXTRA_KCONFIG))))

MAKE_OPTS:= \
	$(KERNEL_MAKE_FLAGS) \
	SUBDIRS="$(PKG_BUILD_DIR)" \
	EXTRA_CFLAGS="$(EXTRA_CFLAGS)" \
	$(EXTRA_KCONFIG)

define Build/Compile
	$(MAKE) -C "$(LINUX_DIR)" \
		$(MAKE_OPTS) \
		modules
endef

$(eval $(call KernelPackage,qmi-wwan-q))

