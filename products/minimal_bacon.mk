PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true

# Inherit AOSP device configuration for bacon.
$(call inherit-product, device/oneplus/bacon/full_bacon.mk)

# Inherit common product files.
$(call inherit-product, vendor/minimal/config/common.mk)

# Telephony
$(call inherit-product, vendor/minimal/config/telephony.mk)

# Enhanced NFC
$(call inherit-product, vendor/minimal/config/nfc_enhanced.mk)

# Inherit common build.prop overrides
-include vendor/minimal/config/common_versions.mk

# Copy bacon specific prebuilt files
MINIMAL_BOOTANIMATION_VARIANT := 1080

# Inherit drm blobs
-include vendor/minimal/config/common_drm.mk

# Setup device specific product configuration.
PRODUCT_NAME := minimal_bacon
PRODUCT_BRAND := oneplus
PRODUCT_DEVICE := bacon
PRODUCT_MODEL := A0001
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_GMS_CLIENTID_BASE := android-oneplus
TARGET_CONTINUOUS_SPLASH_ENABLED := true

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=oneplus/bacon/A0001:5.1/LMY47O/YNG1TAS0YL:user/release-keys \
    PRIVATE_BUILD_DESC="bacon-user 5.1 LMY47O YNG1TAS0YL release-keys"
