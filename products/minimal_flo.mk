# Inherit AOSP device configuration for grouper.
$(call inherit-product, device/asus/flo/full_flo.mk)

# Inherit common product files.
$(call inherit-product, vendor/minimal/products/common.mk)

# Inherit common build.prop overrides
-include vendor/minimal/products/common_versions.mk

# Extra grouper overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/minimal/overlay/grouper

# Copy grouper specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/minimal/proprietary/grouper/media/bootanimation.zip:system/media/bootanimation.zip \
    vendor/minimal/proprietary/grouper/media/audio/notifications/Nexus.mp3:system/media/audio/notifications/Nexus.mp3 \
    vendor/minimal/proprietary/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/minimal/proprietary/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd

# Inherit drm blobs
-include vendor/minimal/products/common_drm.mk

# Setup device specific product configuration.
PRODUCT_NAME := minimal_flo
PRODUCT_BRAND := google
PRODUCT_DEVICE := flo
PRODUCT_MODEL := Nexus 7 (2013)
PRODUCT_MANUFACTURER := Asus

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=razor BUILD_FINGERPRINT=google/razor/flo:5.0.2/LRX22G/1649326:user/release-keys PRIVATE_BUILD_DESC="razor-user 5.0.2 LRX22G 1649326 release-keys"

