# Inherit AOSP device configuration for buzz.
$(call inherit-product, device/htc/buzz/full_buzz.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/superatmel/products/common.mk)

# Include GSM stuff
$(call inherit-product, vendor/superatmel/products/gsm.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := superatmel_buzz
PRODUCT_BRAND := htc_wwe
PRODUCT_DEVICE := buzz
PRODUCT_MODEL := HTC Wildfire
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_ID=FRG83 BUILD_DISPLAY_ID=GRH78C BUILD_FINGERPRINT=google/passion/passion/mahimahi:2.2.1/FRG83/60505:user/release-keys PRIVATE_BUILD_DESC="passion-user 2.2.1 FRG83 60505 release-keys"

# Build kernel
PRODUCT_SPECIFIC_DEFINES += TARGET_PREBUILT_KERNEL=
PRODUCT_SPECIFIC_DEFINES += TARGET_KERNEL_DIR=kernel-wildfire
PRODUCT_SPECIFIC_DEFINES += TARGET_KERNEL_CONFIG=superbler_wildfire_defconfig

# Include the Torch app
PRODUCT_PACKAGES += Torch

# Extra Buzz overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/superatmel/overlayazul/buzz

# Extra RIL settings
PRODUCT_PROPERTY_OVERRIDES += \
    ro.ril.enable.managed.roaming=1 \
    ro.ril.oem.nosim.ecclist=911,112,113,115,117,999,000,08,118,120,122,110,119,995 \
    ro.ril.emc.mode=2

#
# Copy specific prebuilt files
#
PRODUCT_COPY_FILES +=  \
	vendor/superatmel/prebuilt/buzz/etc/super/04modulos:system/etc/super/04modulos \
	vendor/superatmel/prebuilt/buzz/etc/super2/01launcher:system/etc/super2/01launcher \
	vendor/superatmel/prebuilt/buzz/etc/super2/02permisos:system/etc/super2/02permisos \
	vendor/superatmel/prebuilt/buzz/etc/super2/03gps:system/etc/super2/03gps \
	vendor/superatmel/prebuilt/buzz/etc/super2/04control:system/etc/super2/04control \

# Enable Windows Media
WITH_WINDOWS_MEDIA := true

PRODUCT_PROPERTY_OVERRIDES += \
    ro.modversion=SuperBler-MVZ-Wildfire-4

PRODUCT_LOCALES := \
    es_ES \
    ca_ES \
    en_US \
    de_DE \
    eu_ES \
    fr_FR \
    it_IT \
    ru_RU \
    mdpi

PRODUCT_DEFAULT_LANGUAGE := es_ES
