# Inherit AOSP device configuration for z71.
$(call inherit-product, device/commtiva/z71/device_z71.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/superatmel/products/common.mk)

# Include GSM stuff
$(call inherit-product, vendor/superatmel/products/gsm.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := superatmel_z71
PRODUCT_BRAND := Orange
PRODUCT_DEVICE := z71
PRODUCT_MODEL := Boston
PRODUCT_MANUFACTURER := Orange
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=commtiva_z71 BUILD_ID=FRG83 BUILD_DISPLAY_ID=FRG83 BUILD_FINGERPRINT=google/passion/passion/mahimahi:2.2.1/FRG83/60505:user/release-keys PRIVATE_BUILD_DESC="passion-user 2.2.1 FRG83 60505 release-keys"

#PRODUCT_SPECIFIC_DEFINES += TARGET_PRELINKER_MAP=$(TOP)/vendor/superatmel/prelink-linux-arm-z71.map

PRODUCT_SPECIFIC_DEFINES += TARGET_PREBUILT_KERNEL=$(TOP)/vendor/superatmel/prebuilt/kernels/z71/kernel

PRODUCT_PACKAGE_OVERLAYS += vendor/superatmel/overlayazul/z71

# Set ro.modversion
#
PRODUCT_PROPERTY_OVERRIDES += \
    ro.modversion=SuperGinger-SBC-Boston-1

PRODUCT_COPY_FILES +=  \
        vendor/superatmel/prebuilt/z71/etc/super/04modulos:system/etc/super/04modulos \
        vendor/superatmel/prebuilt/z71/etc/super2/01launcher:system/etc/super2/01launcher \
        vendor/superatmel/prebuilt/z71/etc/super2/02permisos:system/etc/super2/02permisos \
        vendor/superatmel/prebuilt/z71/etc/super2/03gps:system/etc/super2/03gps \
        vendor/superatmel/prebuilt/z71/etc/super2/04control:system/etc/super2/04control \

PRODUCT_LOCALES := \
    ca_ES \
    es_ES \
    en_US \
    de_DE \
    eu_ES \
    fr_FR \
    it_IT \
    ru_RU \
    mdpi

PRODUCT_DEFAULT_LANGUAGE := es_ES

