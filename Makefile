ARCHS = armv7 arm64
include theos/makefiles/common.mk

BUNDLE_NAME = AdventSample
AdventSample_FILES = AdventSample.mm
AdventSample_INSTALL_PATH = /Library/PreferenceBundles
AdventSample_FRAMEWORKS = UIKit
AdventSample_PRIVATE_FRAMEWORKS = Preferences

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/AdventSample.plist$(ECHO_END)
