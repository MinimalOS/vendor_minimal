# Inherit AOSP device configuration for grouper.
$(call inherit-product, device/asus/grouper/full_grouper.mk)

# Inherit common product files.
$(call inherit-product, vendor/minimal/config/common.mk)

# Inherit common build.prop overrides
-include vendor/minimal/config/common_versions.mk

# Copy grouper specific prebuilt files
MINIMAL_BOOTANIMATION_VARIANT := 1280

# Inherit drm blobs
-include vendor/minimal/config/common_drm.mk

# Setup device specific product configuration.
PRODUCT_NAME := minimal_grouper
PRODUCT_BRAND := google
PRODUCT_DEVICE := grouper
PRODUCT_MODEL := Nexus 7
PRODUCT_MANUFACTURER := asus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=grouper \
    BUILD_FINGERPRINT=google/nakasi/grouper:5.1.1/LMY48I/2074855:user/release-keys \
    PRIVATE_BUILD_DESC="nakasi-user 5.1.1 LMY48I/2074855 release-keys"
