# Inherit AOSP device configuration for m7.
$(call inherit-product, device/htc/m7/full_m7.mk)

# Telephony
$(call inherit-product, vendor/minimal/config/telephony.mk)

# Release name
PRODUCT_RELEASE_NAME := m7

$(call inherit-product, vendor/minimal/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/htc/m7/device.mk)

# Inherit common build.prop overrides
-include vendor/minimal/config/common_versions.mk

# Inherit drm blobs
-include vendor/minimal/config/common_drm.mk

# Copy m7 specific prebuilt files
PRODUCT_COPY_FILES += \
    vendor/minimal/prebuilt/common/bootanimation/bootanimation.zip:system/media/bootanimation.zip

# Setup device specific product configuration.
PRODUCT_DEVICE := m7
PRODUCT_NAME := minimal_m7
PRODUCT_BRAND := htc
PRODUCT_MODEL := HTC One
PRODUCT_MANUFACTURER := HTC

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=htc_m7 \
    BUILD_ID=JZO54K \
    BUILD_FINGERPRINT="htc/m7/m7:4.1.2/JZO54K/166937.7:user/release-keys" \
    PRIVATE_BUILD_DESC="1.29.651.7 CL166937 release-keys"

