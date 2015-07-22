# Inherit AOSP device configuration for armani.
$(call inherit-product, device/xiaomi/armani/full_armani.mk)

# Inherit common product files.
$(call inherit-product, vendor/minimal/products/common.mk)

# Telephony
$(call inherit-product, vendor/minimal/configs/telephony.mk)

# Enhanced NFC
$(call inherit-product, vendor/minimal/configs/nfc_enhanced.mk)

# Inherit common build.prop overrides
-include vendor/minimal/products/common_versions.mk

# Copy hammerhead specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/minimal/proprietary/tuna/media/bootanimation.zip:system/media/bootanimation.zip \
    vendor/minimal/proprietary/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/minimal/proprietary/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd

# Inherit drm blobs
-include vendor/minimal/products/common_drm.mk

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
