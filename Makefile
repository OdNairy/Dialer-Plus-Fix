TARGET = :clang
ARCHS = armv7 arm64
TARGET_IPHONEOS_DEPLOYMENT_VERSION = 7.0
TARGET_IPHONEOS_DEPLOYMENT_VERSION_arm64 = 7.0


TWEAK_NAME = DialerPlusFix
DialerPlusFix_FILES = Tweak.xm
DialerPlusFix_FRAMEWORKS = UIKit

include theos/makefiles/common.mk
include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 MobilePhone"
