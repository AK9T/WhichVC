INSTALL_TARGET_PROCESSES = SpringBoard

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = Showvc

Showvc_FILES = Tweak.x
Showvc_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
