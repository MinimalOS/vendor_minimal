# Inherit AOSP device configuration for vanquish.
$(call inherit-product, device/motorola/xt925/full_xt925.mk)
$(call inherit-product, vendor/minimal/products/common.mk)

TARGET_SCREEN_WIDTH := 720
TARGET_SCREEN_HEIGHT := 1280

# Extra xt925 overlay (same as nexus 4)
PRODUCT_PACKAGE_OVERLAYS += vendor/minimal/overlay/mako

# Copy vanquish specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/minimal/proprietary/hybrid/hybrid_xhdpi.conf:system/etc/beerbong/properties.conf \
    vendor/minimal/proprietary/tuna/media/bootanimation.zip:system/media/bootanimation.zip \
    vendor/minimal/proprietary/tuna/media/audio/notifications/Nexus.mp3:system/media/audio/notifications/Nexus.mp3 \
    vendor/minimal/proprietary/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/minimal/proprietary/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd

# Inherit common build.prop overrides
-include vendor/minimal/products/common_versions.mk

$(call inherit-product, vendor/minimal/configs/gsm.mk)

# Inherit drm blobs
-include vendor/minimal/products/common_drm.mk

# Setup device specific product configuration.
PRODUCT_NAME := minimal_xt925
PRODUCT_BRAND := motorola
PRODUCT_DEVICE := xt925
PRODUCT_MODEL := Razr HD GSM
PRODUCT_MANUFACTURER := motorola

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=xt925 BUILD_FINGERPRINT=motorola/XT925/vanquish_u:4.0.4/7.7.1Q-144_VQL_S3-49/346380647:user/release-keys

