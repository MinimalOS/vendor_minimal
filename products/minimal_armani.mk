# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/xiaomi/armani/device.mk)
$(call inherit-product-if-exists, vendor/xiaomi/armani/armani-vendor.mk)

# Inherit common product files.
$(call inherit-product, vendor/minimal/config/common.mk)

# Telephony
$(call inherit-product, vendor/minimal/config/telephony.mk)

# Enhanced NFC
$(call inherit-product, vendor/minimal/config/nfc_enhanced.mk)

# Inherit common build.prop overrides
-include vendor/minimal/config/common_versions.mk

# Copy armani specific prebuilt files
MINIMAL_BOOTANIMATION_VARIANT := 720

# Inherit drm blobs
-include vendor/minimal/config/common_drm.mk

# Setup device specific product configuration.
PRODUCT_NAME := minimal_armani
PRODUCT_BRAND := XIAOMI
PRODUCT_DEVICE := armani
PRODUCT_MODEL := HM 1SW
PRODUCT_MANUFACTURER := XIAOMI
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
TARGET_CONTINUOUS_SPLASH_ENABLED := true

# Build prop overrides
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT="Xiaomi/armani/armani:5.1.1/LYZ28E:userdebug/test-keys" \
    PRIVATE_BUILD_DESC="armani-userdebug 5.1.1 LYZ28E test-keys"
