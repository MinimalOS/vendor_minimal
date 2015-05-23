# Inherit AOSP device configuration for grouper.
$(call inherit-product, device/asus/tilapia/full_tilapia.mk)

# Inherit common/tablet product files.
$(call inherit-product, vendor/minimal/products/common_tablet.mk)

# Inherit GSM common stuff.
$(call inherit-product, vendor/minimal/configs/gsm.mk)

# Inherit common build.prop overrides
-include vendor/minimal/products/common_versions.mk

# Extra grouper overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/minimal/overlay/grouper

# Copy grouper specific prebuilt files
PRODUCT_COPY_FILES +=  \
	vendor/minimal/proprietary/hybrid/hybrid_tvdpi.conf:system/etc/beerbong/properties.conf \
    vendor/minimal/proprietary/grouper/media/bootanimation.zip:system/media/bootanimation.zip \
    vendor/minimal/proprietary/grouper/media/audio/notifications/Nexus.mp3:system/media/audio/notifications/Nexus.mp3 \
    vendor/minimal/proprietary/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/minimal/proprietary/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd

# Inherit drm blobs
-include vendor/minimal/products/common_drm.mk

# Setup device specific product configuration.
PRODUCT_NAME := minimal_tilapia
PRODUCT_BRAND := google
PRODUCT_DEVICE := tilapia
PRODUCT_MODEL := Nexus 7
PRODUCT_MANUFACTURER := Asus

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=nakasig BUILD_FINGERPRINT="google/nakasig/tilapia:4.2.2/JDQ39/573038:user/release-keys" PRIVATE_BUILD_DESC="nakasig-user 4.2.2 JDQ39 573038 release-keys"


