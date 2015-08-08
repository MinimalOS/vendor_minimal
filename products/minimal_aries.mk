# Inherit AOSP device configuration for aries
$(call inherit-product, device/sony/aries/full_aries.mk)

# Inherit common product files.
$(call inherit-product, vendor/minimal/config/common.mk)

# Inherit common build.prop overrides
-include vendor/minimal/config/common_versions.mk

# Copy aries specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/minimal/prebuilt/common/bootanimation/bootanimation.zip:system/media/bootanimation.zip

# Inherit drm blobs eye
-include vendor/minimal/config/common_drm.mk

# Setup device specific product configuration.
PRODUCT_NAME := minimal_aries
PRODUCT_BRAND := sony
PRODUCT_DEVICE := aries
PRODUCT_MODEL := Xperia Z3 Compact
PRODUCT_MANUFACTURER := Sony

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=D5803 \
    BUILD_FINGERPRINT=Sony/D5803/D5803:5.0.2/23.1.A.1.28/151083418:user/release-keys \
    PRIVATE_BUILD_DESC="D5803-user 5.0.2 23.1.A.1.28 151083418 release-keys"
