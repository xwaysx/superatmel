# Inherit AOSP device configuration for bravo.
$(call inherit-product, device/htc/bravo/full_bravo.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/superatmel/products/common_full.mk)

# Include GSM stuff
$(call inherit-product, vendor/superatmel/products/gsm.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := superatmel_bravo
PRODUCT_BRAND := htc_wwe
PRODUCT_DEVICE := bravo
PRODUCT_MODEL := HTC Desire
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_ID=FRF91 BUILD_DISPLAY_ID=GRH78C PRODUCT_NAME=htc_bravo BUILD_FINGERPRINT=htc_wwe/htc_bravo/bravo/bravo:2.2/FRF91/226611:user/release-keys TARGET_BUILD_TYPE=userdebug BUILD_VERSION_TAGS=release-keys PRIVATE_BUILD_DESC="2.10.405.2 CL226611 release-keys"

# Build kernel
PRODUCT_SPECIFIC_DEFINES += TARGET_PREBUILT_KERNEL=
PRODUCT_SPECIFIC_DEFINES += TARGET_KERNEL_DIR=cm-kernel
PRODUCT_SPECIFIC_DEFINES += TARGET_KERNEL_CONFIG=superatmel_bravo_defconfig

# Incluye aplicaciones
PRODUCT_PACKAGES += FM \
   Stk \
   Torch

# Broadcom FM radio
$(call inherit-product, vendor/superatmel/products/bcm_fm_radio.mk)

# Extra Passion overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/superatmel/overlay/bravo

# Extra RIL settings
PRODUCT_PROPERTY_OVERRIDES += \
    ro.ril.enable.managed.roaming=1 \
    ro.ril.oem.nosim.ecclist=911,112,113,115,117,999,000,08,118,120,122,110,119,995 \
    ro.ril.emc.mode=2

# Enable Windows Media
WITH_WINDOWS_MEDIA := true

# Set ro.modversion
PRODUCT_PROPERTY_OVERRIDES += \
    ro.modversion=SuperGinger-ST@-Desire-2.6

#
# Copy Passion specific prebuilt files
#
PRODUCT_COPY_FILES +=  \
	vendor/superatmel/prebuilt/bravo/etc/super/04modulos:system/etc/super/04modulos \
	vendor/superatmel/prebuilt/bravo/etc/super2/01launcher:system/etc/super2/01launcher \
	vendor/superatmel/prebuilt/bravo/etc/super2/02permisos:system/etc/super2/02permisos \
	vendor/superatmel/prebuilt/bravo/etc/super2/03gps:system/etc/super2/03gps \
	vendor/superatmel/prebuilt/bravo/etc/super2/04control:system/etc/super2/04control

#	vendor/superatmel/prebuilt/bravo/etc/super2/00unionfs:system/etc/super2/00unionfs \
#	vendor/superatmel/prebuilt/bravo/xbin/unionfs:system/xbin/unionfs \
#	vendor/superatmel/prebuilt/bravo/xbin/busybox2:system/xbin/busybox2



#PRODUCT_LOCALES := \
 #   ca_ES \
 #   es_ES \
 #   en_US \
 #   de_DE \
 #   eu_ES \
 #   fr_FR \
 #   it_IT \
 #   hdpi

PRODUCT_DEFAULT_LANGUAGE := es_ES
