# Inherit AOSP device configuration for flo.
$(call inherit-product, device/asus/flo/full_flo.mk)

# Inherit common product files.
$(call inherit-product, vendor/minimal/config/common.mk)

# Inherit common build.prop overrides
-include vendor/minimal/config/common_versions.mk

# Extra grouper overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/minimal/overlay/grouper

# Copy flo specific prebuilt files
MINIMAL_BOOTANIMATION_VARIANT := 1200

# Inherit drm blobs
-include vendor/minimal/config/common_drm.mk

# Setup device specific product configuration.
PRODUCT_NAME := minimal_flo
PRODUCT_BRAND := google
PRODUCT_DEVICE := flo
PRODUCT_MODEL := Nexus 7 (2013)
PRODUCT_MANUFACTURER := Asus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=razor \
    BUILD_FINGERPRINT=google/razor/flo:5.1.1/LYZ28E/1914015:user/release-keys \
    PRIVATE_BUILD_DESC="razor-user 5.1.1 LYZ28E 1914015 release-keys"
