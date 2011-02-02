# Inherit AOSP device configuration for legend.
$(call inherit-product, device/htc/legend/legend.mk)

# Inherit some common superatmel stuff.
$(call inherit-product, vendor/superatmel/products/common_full.mk)

# Include GSM stuff
$(call inherit-product, vendor/superatmel/products/gsm.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := superatmel_legend
PRODUCT_BRAND := htc
PRODUCT_DEVICE := legend
PRODUCT_MODEL := Legend
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_legend BUILD_ID=GRH55 BUILD_DISPLAY_ID=GRH78C BUILD_FINGERPRINT=google/soju/crespo:2.3/GRH55/79397:user/release-keys PRIVATE_BUILD_DESC="soju-user 2.3 GRH55 79397 release-keys"

PRODUCT_SPECIFIC_DEFINES += TARGET_PRELINKER_MAP=$(TOP)/vendor/superatmel/prelink-linux-arm-msm722x.map

#Build kernel
PRODUCT_SPECIFIC_DEFINES += TARGET_PREBUILT_KERNEL=
PRODUCT_SPECIFIC_DEFINES += TARGET_KERNEL_DIR=kernel-legend2
PRODUCT_SPECIFIC_DEFINES += TARGET_KERNEL_CONFIG=superatmel_legend_defconfig

PRODUCT_SPECIFIC_DEFINES += TARGET_PREBUILT_KERNEL=$(TOP)/vendor/superatmel/prebuilt/kernels/legend/kernel

# Include the Gallery
PRODUCT_PACKAGES += Gallery \
	Torch \
	Stk

PRODUCT_PACKAGE_OVERLAYS += vendor/superatmel/overlay/legend

# Set ro.modversion
PRODUCT_PROPERTY_OVERRIDES += \
    ro.modversion=SuperGinger-ST@-Legend-2.2

# Copy specific prebuilt files
#
PRODUCT_COPY_FILES +=  \
	vendor/superatmel/prebuilt/legend/etc/super/04modulos:system/etc/super/04modulos \
	vendor/superatmel/prebuilt/legend/etc/super2/00cafus:system/etc/super2/00cafus \
	vendor/superatmel/prebuilt/legend/etc/super2/01launcher:system/etc/super2/01launcher \
	vendor/superatmel/prebuilt/legend/etc/super2/02permisos:system/etc/super2/02permisos \
	vendor/superatmel/prebuilt/legend/etc/super2/03gps:system/etc/super2/03gps \
	vendor/superatmel/prebuilt/legend/etc/super2/04control:system/etc/super2/04control \
	vendor/superatmel/prebuilt/legend/lib/modules/aufs.ko:system/lib/modules/aufs.ko \
	vendor/superatmel/prebuilt/legend/xbin/aufs:system/xbin/aufs \
	vendor/superatmel/prebuilt/legend/xbin/auplink:system/xbin/auplink \
	vendor/superatmel/prebuilt/legend/xbin/mount.static:system/xbin/mount.static \
	vendor/superatmel/prebuilt/legend/etc/WP_0C0AESN.db:system/etc/WP_0C0AESN.db \
	vendor/superatmel/prebuilt/legend/etc/WP_040CFRA.db:system/etc/WP_040CFRA.db \
	vendor/superatmel/prebuilt/legend/etc/WP_0401ARA.db:system/etc/WP_0401ARA.db \
	vendor/superatmel/prebuilt/legend/etc/WP_0404CHT.db:system/etc/WP_0404CHT.db \
	vendor/superatmel/prebuilt/legend/etc/WP_0405CSY.db:system/etc/WP_0405CSY.db \
	vendor/superatmel/prebuilt/legend/etc/WP_0407GER.db:system/etc/WP_0407GER.db \
	vendor/superatmel/prebuilt/legend/etc/WP_0408GRK.db:system/etc/WP_0408GRK.db \
	vendor/superatmel/prebuilt/legend/etc/WP_0409WWE.db:system/etc/WP_0409WWE.db \
	vendor/superatmel/prebuilt/legend/etc/WP_0410ITA.db:system/etc/WP_0410ITA.db \
	vendor/superatmel/prebuilt/legend/etc/WP_0412KOR.db:system/etc/WP_0412KOR.db \
	vendor/superatmel/prebuilt/legend/etc/WP_0413NLD.db:system/etc/WP_0413NLD.db \
	vendor/superatmel/prebuilt/legend/etc/WP_0414NOR.db:system/etc/WP_0414NOR.db \
	vendor/superatmel/prebuilt/legend/etc/WP_0415PLK.db:system/etc/WP_0415PLK.db \
	vendor/superatmel/prebuilt/legend/etc/WP_0419RUS.db:system/etc/WP_0419RUS.db \
	vendor/superatmel/prebuilt/legend/etc/WP_0804CHS.db:system/etc/WP_0804CHS.db \
	vendor/superatmel/prebuilt/legend/etc/WP_0816PTG.db:system/etc/WP_0816PTG.db

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
