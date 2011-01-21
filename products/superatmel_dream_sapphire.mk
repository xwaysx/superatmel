# Inherit AOSP device configuration for dream_sapphire.
$(call inherit-product, device/htc/dream_sapphire/full_dream_sapphire.mk)

# Inherit some common superatmel stuff.
$(call inherit-product, vendor/superatmel/products/common.mk)

# Include GSM stuff
$(call inherit-product, vendor/superatmel/products/gsm.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := superatmel_dream_sapphire
PRODUCT_BRAND := google
PRODUCT_DEVICE := dream_sapphire
PRODUCT_MODEL := Dream/Sapphire
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_ID=FRG83 BUILD_DISPLAY_ID=FRG83 BUILD_FINGERPRINT=tmobile/opal/sapphire/sapphire:2.2.1/FRG83/60505:user/release-keys PRIVATE_BUILD_DESC="opal-user 2.2.1 FRG83 60505 release-keys"

# Extra Dream/Sapphire overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/superatmel/overlay/dream_sapphire

# Build kernel
PRODUCT_SPECIFIC_DEFINES += TARGET_PREBUILT_KERNEL=
PRODUCT_SPECIFIC_DEFINES += TARGET_KERNEL_DIR=kernel-msm
PRODUCT_SPECIFIC_DEFINES += TARGET_KERNEL_CONFIG=cyanogen_msm_defconfig


# Include apps
PRODUCT_PACKAGES += Gallery

PRODUCT_COPY_FILES += \
	vendor/superatmel/prebuilt/dream_sapphire/etc/super/02audio:system/etc/super/02audio

# Enable Compcache by default on D/S
PRODUCT_PROPERTY_OVERRIDES += \
   ro.compcache.default=18

# ro.modversion
PRODUCT_PROPERTY_OVERRIDES += \
    ro.modversion=SuperGinger-V.2

# Use the audio profile hack
WITH_DS_HTCACOUSTIC_HACK := true

#
# Copy DS specific prebuilt files
#
PRODUCT_COPY_FILES +=  \
	vendor/superatmel/prebuilt/dream_sapphire/etc/AudioPara_dream.csv:system/etc/AudioPara_dream.csv \
	vendor/superatmel/prebuilt/dream_sapphire/etc/AudioPara_sapphire.csv:system/etc/AudioPara_sapphire.csv \
	vendor/superatmel/prebuilt/dream_sapphire/etc/super/04modulos:system/etc/super/04modulos \
	vendor/superatmel/prebuilt/dream_sapphire/etc/super2/01launcher:system/etc/super2/01launcher \
	vendor/superatmel/prebuilt/dream_sapphire/etc/super2/02permisos:system/etc/super2/02permisos \
	vendor/superatmel/prebuilt/dream_sapphire/etc/super2/03gps:system/etc/super2/03gps \
	vendor/superatmel/prebuilt/dream_sapphire/etc/super2/04control:system/etc/super2/04control \
	vendor/superatmel/prebuilt/dream_sapphire/system/usr/keychars/trout-keypad-v3.kcm.bineu:system/usr/keychars/trout-keypad-v3.kcm.bineu \
	vendor/superatmel/prebuilt/dream_sapphire/system/usr/keychars/trout-keypad-v3.kcm.binus:system/usr/keychars/trout-keypad-v3.kcm.binus \
	vendor/superatmel/prebuilt/dream_sapphire/system/usr/keychars/trout-keypad-v3.kcm.bineu:system/usr/keychars/trout-keypad-v3.kcm.bin \
	vendor/superatmel/prebuilt/dream_sapphire/system/usr/keylayout/trout-keypad-v3.kleu:system/usr/keylayout/trout-keypad-v3.kleu \
	vendor/superatmel/prebuilt/dream_sapphire/system/usr/keylayout/trout-keypad-v3.klus:system/usr/keylayout/trout-keypad-v3.klus \
	vendor/superatmel/prebuilt/dream_sapphire/system/usr/keylayout/trout-keypad-v3.kleu:system/usr/keylayout/trout-keypad-v3.kl

#PRODUCT_LOCALES := \
#    ca_ES \
#    es_ES \
#    en_US \
#    de_DE \
#    eu_ES \
#    fr_FR \
#    it_IT \
#    mdpi

PRODUCT_DEFAULT_LANGUAGE := es_ES
