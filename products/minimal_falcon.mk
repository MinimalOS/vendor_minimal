PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true

# Inherit AOSP device configuration for falcon.
$(call inherit-product, device/motorola/falcon/full_falcon.mk)

# Inherit common product files.
$(call inherit-product, vendor/minimal/config/common.mk)

# Telephony
$(call inherit-product, vendor/minimal/config/telephony.mk)

# Inherit common build.prop overrides
-include vendor/minimal/config/common_versions.mk

# Copy falcon specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/minimal/prebuilt/common/bootanimation/bootanimation.zip:system/media/bootanimation.zip

# Inherit drm blobs
-include vendor/minimal/config/common_drm.mk

# Setup device specific product configuration.
PRODUCT_NAME := minimal_falcon
PRODUCT_BRAND := motorola
PRODUCT_DEVICE := falcon
PRODUCT_MODEL := falcon
PRODUCT_MANUFACTURER := Motorola
TARGET_CONTINUOUS_SPLASH_ENABLED := true

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=falcon \
    TARGET_DEVICE=falcon
