FINALPACKAGE=1
ARCHS = arm64
TARGET = iphone:14.0
INSTALL_TARGET_PROCESSES = Camera

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = frontcammirror
frontcammirror_FILES = Tweak.x
frontcammirror_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
include $(THEOS_MAKE_PATH)/aggregate.mk
