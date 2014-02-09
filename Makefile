GO_EASY_ON_ME = 1

THEOS_DEVICE_IP=127.0.0.1
THEOS_DEVICE_PORT=2222

TARGET = iphone:clang:latest:7.0
#ARCHS = armv7 arm64

include theos/makefiles/common.mk

TWEAK_NAME = 24
24_FILES = Tweak.xm
24_FRAMEWORKS = UIKit CoreGraphics

include $(THEOS_MAKE_PATH)/tweak.mk

after-stage::
	make clean #love this.