# Inherit AOSP device configuration for cancro.
$(call inherit-product, device/xiaomi/cancro/full_cancro.mk)

# Inherit common product files.
$(call inherit-product, vendor/minimal/config/common.mk)

# Telephony
$(call inherit-product, vendor/minimal/config/telephony.mk)

# Enhanced NFC
$(call inherit-product, vendor/minimal/config/nfc_enhanced.mk)

# Inherit common build.prop overrides
-include vendor/minimal/config/common_versions.mk

# Copy cancro specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/minimal/prebuilt/common/bootanimation/bootanimation.zip:system/media/bootanimation.zip

# Inherit drm blobs
-include vendor/minimal/config/common_drm.mk

# Setup device specific product configuration.
PRODUCT_NAME := minimal_cancro
PRODUCT_BRAND := XIAOMI
PRODUCT_DEVICE := cancro
PRODUCT_MODEL := Mi 3W
PRODUCT_MANUFACTURER := XIAOMI
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
TARGET_CONTINUOUS_SPLASH_ENABLED := true

# Build prop overrides
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT="Xiaomi/cancro/cancro:5.1.1/LYZ28E:userdebug/test-keys" \
    PRIVATE_BUILD_DESC="cancro-userdebug 5.1.1 LYZ28E test-keys"
