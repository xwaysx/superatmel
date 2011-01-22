$(call inherit-product, device/htc/hero/full_hero.mk)

$(call inherit-product, vendor/superatmel/products/common.mk)

$(call inherit-product, vendor/superatmel/products/gsm.mk)

PRODUCT_NAME := superatmel_hero
PRODUCT_BRAND := htc
PRODUCT_DEVICE := hero
PRODUCT_MODEL := Hero
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_ID=FRG83 BUILD_DISPLAY_ID=GRH78C BUILD_FINGERPRINT=google/passion/passion/mahimahi:2.2.1/FRG83/60505:user/release-keys PRIVATE_BUILD_DESC="passion-user 2.2.1 FRG83 60505 release-keys"

# PRODUCT_SPECIFIC_DEFINES += TARGET_PRELINKER_MAP=$(TOP)/vendor/superatmel/prelink-linux-arm-hero.map

WITH_WINDOWS_MEDIA := true

# Extra Passion overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/superatmel/overlay/hero

# Build kernel
PRODUCT_SPECIFIC_DEFINES += TARGET_PREBUILT_KERNEL=
PRODUCT_SPECIFIC_DEFINES += TARGET_KERNEL_DIR=kernel-hero
PRODUCT_SPECIFIC_DEFINES += TARGET_KERNEL_CONFIG=superbler_hero_defconfig

# Set ro.modversion
PRODUCT_PROPERTY_OVERRIDES += \
	ro.modversion=SuperTeam-SBC-Hero-1

# Copy specific prebuilt files
#
PRODUCT_COPY_FILES +=  \
	vendor/superatmel/prebuilt/hero/etc/super/04modulos:system/etc/super/04modulos \
	vendor/superatmel/prebuilt/hero/etc/super2/01launcher:system/etc/super2/01launcher \
	vendor/superatmel/prebuilt/hero/etc/super2/02permisos:system/etc/super2/02permisos \
	vendor/superatmel/prebuilt/hero/etc/super2/03gps:system/etc/super2/03gps \
	vendor/superatmel/prebuilt/hero/etc/super2/04control:system/etc/super2/04control

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
