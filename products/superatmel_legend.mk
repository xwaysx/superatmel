# Inherit AOSP device configuration for legend.
$(call inherit-product, device/htc/legend/legend.mk)

# Inherit some common superatmel stuff.
$(call inherit-product, vendor/superatmel/products/common.mk)

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
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_legend BUILD_ID=FRG83 BUILD_DISPLAY_ID=FRG83 BUILD_FINGERPRINT=google/passion/passion/mahimahi:2.2.1/FRG83/60505:user/release-keys PRIVATE_BUILD_DESC="passion-user 2.2.1 FRG83 60505 release-keys"

PRODUCT_SPECIFIC_DEFINES += TARGET_PRELINKER_MAP=$(TOP)/vendor/superatmel/prelink-linux-arm-legend.map

#Build kernel
#PRODUCT_SPECIFIC_DEFINES += TARGET_PREBUILT_KERNEL=
#PRODUCT_SPECIFIC_DEFINES += TARGET_KERNEL_DIR=kernel-legend
#PRODUCT_SPECIFIC_DEFINES += TARGET_KERNEL_CONFIG=legend_defconfig

PRODUCT_SPECIFIC_DEFINES += TARGET_PREBUILT_KERNEL=$(TOP)/vendor/superatmel/prebuilt/kernels/legend/kernel

# Include the Gallery
PRODUCT_PACKAGES += Gallery \
	Torch

# Set ro.modversion
PRODUCT_PROPERTY_OVERRIDES += \
    ro.modversion=SuperBler-MVZ-Leg-4

# Copy specific prebuilt files
#
PRODUCT_COPY_FILES +=  \
	vendor/superatmel/prebuilt/legend/etc/super/04modulos:system/etc/super/04modulos \
	vendor/superatmel/prebuilt/legend/etc/super2/00cafus:system/etc/super2/00cafus \
	vendor/superatmel/prebuilt/legend/etc/super2/01launcher:system/etc/super2/01launcher \
	vendor/superatmel/prebuilt/legend/etc/super2/02permisos:system/etc/super2/02permisos \
	vendor/superatmel/prebuilt/legend/etc/super2/03gps:system/etc/super2/03gps \
	vendor/superatmel/prebuilt/legend/etc/super2/04control:system/etc/super2/04control \
	vendor/superatmel/prebuilt/legend/lib/modules/sdio.ko:system/lib/modules/sdio.ko \
	vendor/superatmel/prebuilt/legend/lib/modules/tiwlan_drv.ko:system/lib/modules/tiwlan_drv.ko \
	vendor/superatmel/prebuilt/legend/lib/modules/2.6.29.6-SuperBler/kernel/fs/aufs/aufs.ko:system/lib/modules/2.6.29.6-SuperBler/kernel/fs/aufs/aufs.ko \
	vendor/superatmel/prebuilt/legend/lib/modules/2.6.29.6-SuperBler/kernel/fs/cifs/cifs.ko:system/lib/modules/2.6.29.6-SuperBler/kernel/fs/cifs/cifs.ko \
	vendor/superatmel/prebuilt/legend/lib/modules/2.6.29.6-SuperBler/kernel/net/ipv6/ipv6.ko:system/lib/modules/2.6.29.6-SuperBler/kernel/net/ipv6/ipv6.ko \
	vendor/superatmel/prebuilt/legend/lib/modules/2.6.29.6-SuperBler/modules.alias:system/lib/modules/2.6.29.6-SuperBler/modules.alias \
	vendor/superatmel/prebuilt/legend/lib/modules/2.6.29.6-SuperBler/modules.alias.bin:system/lib/modules/2.6.29.6-SuperBler/modules.alias.bin \
	vendor/superatmel/prebuilt/legend/lib/modules/2.6.29.6-SuperBler/modules.dep:system/lib/modules/2.6.29.6-SuperBler/modules.dep \
	vendor/superatmel/prebuilt/legend/lib/modules/2.6.29.6-SuperBler/modules.dep.bin:system/lib/modules/2.6.29.6-SuperBler/modules.dep.bin \
	vendor/superatmel/prebuilt/legend/lib/modules/2.6.29.6-SuperBler/modules.devname:system/lib/modules/2.6.29.6-SuperBler/modules.devname \
	vendor/superatmel/prebuilt/legend/lib/modules/2.6.29.6-SuperBler/modules.order:system/lib/modules/2.6.29.6-SuperBler/modules.order \
	vendor/superatmel/prebuilt/legend/lib/modules/2.6.29.6-SuperBler/modules.softdep:system/lib/modules/2.6.29.6-SuperBler/modules.softdep \
	vendor/superatmel/prebuilt/legend/lib/modules/2.6.29.6-SuperBler/modules.symbols:system/lib/modules/2.6.29.6-SuperBler/modules.symbols \
	vendor/superatmel/prebuilt/legend/lib/modules/2.6.29.6-SuperBler/modules.symbols.bin:system/lib/modules/2.6.29.6-SuperBler/modules.symbols.bin \
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

PRODUCT_LOCALES := \
    ca_ES \
    es_ES \
    en_US \
    de_DE \
    eu_ES \
    fr_FR \
    it_IT \
    mdpi

PRODUCT_DEFAULT_LANGUAGE := es_ES
