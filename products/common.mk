# Generic superatmelmod product
PRODUCT_NAME := superatmel
PRODUCT_BRAND := superatmel
PRODUCT_DEVICE := generic

PRODUCT_PACKAGES += ADWLauncher

# Used by BusyBox
KERNEL_MODULES_DIR:=/system/lib/modules

# Tiny toolbox
TINY_TOOLBOX:=true

PRODUCT_PROPERTY_OVERRIDES += \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1

PRODUCT_PROPERTY_OVERRIDES += \
    ro.rommanager.developerid=supermvl \
    ro.sup.superteam

# SuperBler specific product packages
PRODUCT_PACKAGES += \
    AndroidTerm \
    FileManager \
    LatinIME \
    openvpn \
    SpareParts2 \
    Parts \
    libcyanogen-dsp \
    CMPartsHelper \
    Wallpapers \
    DSPManager

# Activa Voip
PRODUCT_COPY_FILES += \
     frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Common SuperMVL overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/superatmel/overlay/common

# T-Mobile theme engine
include vendor/superatmel/products/themes_common.mk

PRODUCT_COPY_FILES += \
    vendor/superatmel/prebuilt/common/bin/verify_cache_partition_size.sh:system/bin/verify_cache_partition_size.sh \
    vendor/superatmel/prebuilt/common/sd/vacio:system/sd/vacio \
    vendor/superatmel/prebuilt/common/etc/super/00inicio:system/etc/super/00inicio \
    vendor/superatmel/prebuilt/common/etc/super/01sysctl:system/etc/super/01sysctl \
    vendor/superatmel/prebuilt/common/etc/super/03firstboot:system/etc/super/03firstboot \
    vendor/superatmel/prebuilt/common/etc/super/06mountdl:system/etc/super/06mountdl \
    vendor/superatmel/prebuilt/common/etc/super/20userinit:system/etc/super/20userinit \
    vendor/superatmel/prebuilt/common/etc/resolv.conf:system/etc/resolv.conf \
    vendor/superatmel/prebuilt/common/etc/sysctl.conf:system/etc/sysctl.conf \
    vendor/superatmel/prebuilt/common/etc/terminfo/l/linux:system/etc/terminfo/l/linux \
    vendor/superatmel/prebuilt/common/etc/terminfo/u/unknown:system/etc/terminfo/u/unknown \
    vendor/superatmel/prebuilt/common/etc/profile:system/etc/profile \
    vendor/superatmel/prebuilt/common/etc/init.local.rc:system/etc/init.local.rc \
    vendor/superatmel/prebuilt/common/bin/logca:system/bin/logca \
    vendor/superatmel/prebuilt/common/bin/reiniciar:system/bin/reiniciar \
    vendor/superatmel/prebuilt/common/bin/repapps:system/bin/repapps \
    vendor/superatmel/prebuilt/common/bin/rosystem:system/bin/rosystem \
    vendor/superatmel/prebuilt/common/bin/rwsystem:system/bin/rwsystem \
    vendor/superatmel/prebuilt/common/bin/supmar:system/bin/supmar \
    vendor/superatmel/prebuilt/common/bin/supmarc:system/bin/supmarc \
    vendor/superatmel/prebuilt/common/bin/zip:system/bin/zip \
    vendor/superatmel/prebuilt/common/bin/zipalign:system/bin/zipalign \
    vendor/superatmel/prebuilt/common/bin/actapps2sd:system/bin/actapps2sd \
    vendor/superatmel/prebuilt/common/bin/apps2sd:system/bin/apps2sd \
    vendor/superatmel/prebuilt/common/bin/desap:system/bin/desap \
    vendor/superatmel/prebuilt/common/bin/noap:system/bin/noap \
    vendor/superatmel/prebuilt/common/bin/compcache:system/bin/compcache \
    vendor/superatmel/prebuilt/common/bin/handle_compcache:system/bin/handle_compcache \
    vendor/superatmel/prebuilt/common/bin/swap:system/bin/swap \
    vendor/superatmel/prebuilt/common/bin/fix_permissions:system/bin/fix_permissions \
    vendor/superatmel/prebuilt/common/bin/sysinit:system/bin/sysinit \
    vendor/superatmel/prebuilt/common/xbin/htop:system/xbin/htop \
    vendor/superatmel/prebuilt/common/xbin/irssi:system/xbin/irssi \
    vendor/superatmel/prebuilt/common/xbin/powertop:system/xbin/powertop \
    vendor/superatmel/prebuilt/common/xbin/openvpn-up.sh:system/xbin/openvpn-up.sh 

# Sonido para la rom
PRODUCT_COPY_FILES += \
	vendor/superatmel/prebuilt/common/media/audio/notifications/Bubbles.ogg:system/media/audio/notifications/Bubbles.ogg \
	vendor/superatmel/prebuilt/common/media/audio/notifications/codeccall.ogg:system/media/audio/notifications/codecall.ogg \
	vendor/superatmel/prebuilt/common/media/audio/notifications/eXcitement.ogg:system/media/audio/notifications/eXcitement.ogg \
	vendor/superatmel/prebuilt/common/media/audio/notifications/icq_message.ogg:system/media/audio/notifications/icq_message.ogg \
	vendor/superatmel/prebuilt/common/media/audio/notifications/Spacious.ogg:system/media/audio/notifications/Spacious.ogg \
	vendor/superatmel/prebuilt/common/media/audio/notifications/regulus.ogg:system/media/audio/notifications/regulus.ogg \
	vendor/superatmel/prebuilt/common/media/audio/alarms/Beeps.mp3:system/media/audio/notifications/Beeps.mp3 \
	vendor/superatmel/prebuilt/common/media/audio/alarms/Snooze.mp3:system/media/audio/notifications/Snooze.mp3 \
	vendor/superatmel/prebuilt/common/media/audio/ringtones/Old_Phone.mp3:system/media/audio/ringtones/Old_Phone.mp3 \
	vendor/superatmel/prebuilt/common/media/audio/ringtones/Uprising.ogg:system/media/audio/ringtones/Uprising.ogg \
	vendor/superatmel/prebuilt/common/media/audio/ui/camera_click.ogg:system/media/audio/ui/camera_click.ogg \
	vendor/superatmel/prebuilt/common/media/audio/ui/Lock.ogg:system/media/audio/ui/Lock.ogg \
	vendor/superatmel/prebuilt/common/media/audio/ui/Unlock.ogg:system/media/audio/ui/Unlock.ogg \
	vendor/superatmel/prebuilt/common/media/audio/ui/VideoRecord.ogg:system/media/audio/ui/VideoRecord.ogg \
	vendor/superatmel/prebuilt/common/media/audio/ui/LowBattery.ogg:system/media/audio/ui/LowBattery.ogg
