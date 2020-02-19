INSTALL_TARGET_PROCESSES = SpringBoard

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = WhatsDatVC

Showvc_FILES = Tweak.x RKDropdownAlert.m
Showvc_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
