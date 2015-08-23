# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from hardware-specific part of titan
$(call inherit-product, device/motorola/titan/full_titan.mk)

# Inherit common product files.
$(call inherit-product, vendor/minimal/config/common.mk)

# Telephony
$(call inherit-product, vendor/minimal/config/telephony.mk)

# Inherit common build.prop overrides
-include vendor/minimal/config/common_versions.mk

# Copy titan specific prebuilt files
MINIMAL_BOOTANIMATION_VARIANT := 720

# Inherit drm blobs
-include vendor/minimal/products/common_drm.mk

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := minimal_titan
PRODUCT_BRAND := Motorola
PRODUCT_DEVICE := titan
PRODUCT_MODEL := Moto G 2014
PRODUCT_MANUFACTURER := Motorola
PRODUCT_GMS_CLIENTID_BASE := android-motorola

# Set build fingerprint / ID / Product Name etc.
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=titan 
