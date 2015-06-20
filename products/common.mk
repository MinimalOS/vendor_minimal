# Generic product
PRODUCT_NAME := minimal
PRODUCT_BRAND := minimal
PRODUCT_DEVICE := generic

# Common overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/minimal/overlay/common

PRODUCT_PACKAGES += \
    AudioFX \
    BluetoothExt \
    DeskClock \
    Development \
    Dialer \
    Eleven \
    LatinImeDictionaryPack \
    libemoji \
    libscreenrecorder \
    LockClock \
    ScreenRecorder \
    SlimLauncher \
    SoundRecorder \
    Torch \
    VoicePlus

# CM Hardware Abstraction Framework
PRODUCT_PACKAGES += \
    org.cyanogenmod.hardware \
    org.cyanogenmod.hardware.xml

#Extras
PRODUCT_PACKAGES += \
    procmem \
    procrank

# Openssh
PRODUCT_PACKAGES += \
    libssh \
    scp \
    sftp \
    ssh \
    sshd \
    sshd_config \
    ssh-keygen \
    start-ssh

# Extra tools in Minimal
PRODUCT_PACKAGES += \
    libsepol \
    openvpn \
    e2fsck \
    mke2fs \
    tune2fs \
    bash \
    nano \
    htop \
    powertop \
    lsof \
    mount.exfat \
    fsck.exfat \
    mkfs.exfat \
    mkfs.f2fs \
    fsck.f2fs \
    fibmap.f2fs \
    ntfsfix \
    ntfs-3g \
    gdbserver \
    micro_bench \
    oprofiled \
    sqlite3 \
    strace

# Stagefright FFMPEG plugin
PRODUCT_PACKAGES += \
    libstagefright_soft_ffmpegadec \
    libstagefright_soft_ffmpegvdec \
    libFFmpegExtractor \
	media_codecs_ffmpeg.xml
PRODUCT_PROPERTY_OVERRIDES += \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.error.receiver.system.apps=com.google.android.feedback \
    ro.com.google.locationfeatures=1 \
    ro.setupwizard.mode=OPTIONAL \
    ro.setupwizard.enterprise_mode=1 \
    ro.media.enc.jpeg.quality=100 \
    ro.media.dec.jpeg.memcap=8000000 \
    ro.media.enc.hprof.vid.bps=8000000 \
    wifi.supplicant_scan_interval=180 \
    ro.ril.disable.power.collapse=1 \
    pm.sleep_mode=1 \
    dalvik.vm.image-dex2oat-filter=everything \
    dalvik.vm.dex2oat-filter=everything

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.selinux=1

# Audio
$(call inherit-product-if-exists, frameworks/base/data/sounds/OldAudio.mk)
$(call inherit-product-if-exists, frameworks/base/data/sounds/NewAudio.mk)
$(call inherit-product-if-exists, frameworks/base/data/sounds/AudioPackageStars.mk)
$(call inherit-product-if-exists, frameworks/base/data/sounds/AudioPackageNewWave.mk)
$(call inherit-product-if-exists, frameworks/base/data/sounds/AudioPackageElements.mk)
$(call inherit-product-if-exists, frameworks/base/data/sounds/AudioPackage8.mk)
$(call inherit-product-if-exists, frameworks/base/data/sounds/AudioPackage9.mk)
$(call inherit-product-if-exists, frameworks/base/data/sounds/AudioPackage10.mk)
$(call inherit-product-if-exists, frameworks/base/data/sounds/AudioPackage11.mk)
$(call inherit-product-if-exists, frameworks/base/data/sounds/AudioPackage12.mk)
$(call inherit-product-if-exists, frameworks/base/data/sounds/AudioPackage12_48.mk)

# Enable ADB authentication and root
ifneq ($(TARGET_BUILD_VARIANT),eng)
ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.adb.secure=0 \
    ro.secure=0 \
    persist.sys.root_access=1
endif

# Common dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/minimal/overlay/dictionaries

# Blobs common to all devices
PRODUCT_COPY_FILES += \
    vendor/minimal/proprietary/common/etc/resolv.conf:system/etc/resolv.conf

# init.d support
PRODUCT_COPY_FILES += \
    vendor/minimal/proprietary/common/etc/init.local.rc:root/init.minimal.rc \
    vendor/minimal/proprietary/common/etc/init.d/03firstboot:system/etc/init.d/03firstboot \
    vendor/minimal/proprietary/common/etc/init_trigger.enabled:system/etc/init_trigger.enabled \
    vendor/minimal/proprietary/common/lib/libjni_latinimegoogle.so:system/lib/libjni_latinimegoogle.so \
    vendor/minimal/proprietary/common/bin/sysinit:system/bin/sysinit

# SELinux filesystem labels
PRODUCT_COPY_FILES += \
    vendor/minimal/proprietary/common/etc/init.d/50selinuxrelabel:system/etc/init.d/50selinuxrelabel

# Term info for nano support
PRODUCT_COPY_FILES += \
    vendor/minimal/proprietary/common/etc/terminfo/l/linux:system/etc/terminfo/l/linux \
    vendor/minimal/proprietary/common/etc/terminfo/u/unknown:system/etc/terminfo/u/unknown

# Added xbin files
PRODUCT_COPY_FILES += \
    vendor/minimal/proprietary/common/xbin/backup:system/xbin/backup \
    vendor/minimal/proprietary/common/xbin/btool:system/xbin/btool \
    vendor/minimal/proprietary/common/xbin/drm1_func_test:system/xbin/drm1_func_test \
    vendor/minimal/proprietary/common/xbin/gdb:system/xbin/gdb \
    vendor/minimal/proprietary/common/xbin/gdbserver:system/xbin/gdbserver \
    vendor/minimal/proprietary/common/xbin/market_history:system/xbin/market_history \
    vendor/minimal/proprietary/common/xbin/rm_apks:system/xbin/rm_apks \
    vendor/minimal/proprietary/common/xbin/run_backup:system/xbin/run_backup \
    vendor/minimal/proprietary/common/xbin/run_restore:system/xbin/run_restore \
    vendor/minimal/proprietary/common/xbin/ssmgrd:system/xbin/ssmgrd \
    vendor/minimal/proprietary/common/xbin/sysro:system/xbin/sysro \
    vendor/minimal/proprietary/common/xbin/sysrw:system/xbin/sysrw \
    vendor/minimal/proprietary/common/xbin/zip:system/xbin/zip \
    vendor/minimal/proprietary/common/xbin/zipalign:system/xbin/zipalign

# AdAway
PRODUCT_COPY_FILES += \
    vendor/minimal/proprietary/common/app/org.adaway.apk:system/app/org.adaway.apk

# BitSyko Layers
PRODUCT_COPY_FILES += \
    vendor/minimal/proprietary/common/app/com.lovejoy777.rroandlayersmanager.apk:system/app/com.lovejoy777.rroandlayersmanager/base.apk

# SuperSU
PRODUCT_COPY_FILES += \
     vendor/minimal/proprietary/common/app/UPDATE-SuperSU.zip:system/addon.d/UPDATE-SuperSU.zip \
     vendor/minimal/proprietary/common/etc/init.d/99SuperSUDaemon:system/etc/init.d/99SuperSUDaemon

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Camera shutter sound property
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.camera-sound=1


ifeq ($(PRODUCT_PREBUILT_WEBVIEWCHROMIUM), yes)
    -include prebuilts/chromium/$(TARGET_DEVICE)/chromium_prebuilt.mk
endif
