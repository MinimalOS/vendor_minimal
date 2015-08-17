# Inherit AOSP device configuration for osprey.
$(call inherit-product, device/motorola/osprey/full_osprey.mk)

# Inherit common product files.
$(call inherit-product, vendor/minimal/config/common.mk)

# Telephony
$(call inherit-product, vendor/minimal/config/telephony.mk)

# Inherit common build.prop overrides
-include vendor/minimal/config/common_versions.mk

# Copy osprey specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/minimal/prebuilt/common/bootanimation/bootanimation.zip:system/media/bootanimation.zip

# Inherit drm blobs
-include vendor/minimal/config/common_drm.mk

# Setup device specific product configuration.
PRODUCT_NAME := minimal_osprey
PRODUCT_BRAND := motorola
PRODUCT_DEVICE := osprey
PRODUCT_MODEL := Moto G 2015
PRODUCT_MANUFACTURER := Motorola
TARGET_CONTINUOUS_SPLASH_ENABLED := true

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=osprey \
    TARGET_DEVICE=osprey
