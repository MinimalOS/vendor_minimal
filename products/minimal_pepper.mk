# Inherit AOSP device configuration for pepper.
$(call inherit-product, device/sony/pepper/full_pepper.mk)

# Inherit from the common montblanc definitions
$(call inherit-product, device/sony/montblanc-common/montblanc.mk)

# Inherit common product files.
$(call inherit-product, vendor/minimal/config/common.mk)

# Telephony
$(call inherit-product, vendor/minimal/config/telephony.mk)

# Inherit common build.prop overrides
-include vendor/minimal/config/common_versions.mk

# Copy pepper specific prebuilt files
PRODUCT_COPY_FILES +=  \
    device/sony/pepper/prebuilt/bootanimation.zip:system/media/bootanimation.zip

# Inherit drm blobs
-include vendor/minimal/config/common_drm.mk

# Setup device specific product configuration.
    PRODUCT_BRAND := sony
    PRODUCT_DEVICE := pepper
    PRODUCT_MANUFACTURER := Sony
    PRODUCT_MODEL := Xperia Sola
    PRODUCT_NAME := minimal_pepper

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=pepper \
    TARGET_DEVICE=pepper
