# Inherit common CM stuff
$(call inherit-product, vendor/superatmel/products/common.mk)

# Bring in all audio files
#include frameworks/base/data/sounds/super.mk
include frameworks/base/data/sounds/AudioPackage5.mk

# Theme packages
include vendor/superatmel/products/themes.mk

# Default ringtone
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=Uprising.ogg \
    ro.config.notification_sound=Bubbles.ogg

