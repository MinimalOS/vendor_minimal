PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true

# Inherit AOSP device configuration for bacon.
$(call inherit-product, device/oneplus/bacon/full_bacon.mk)

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
    vendor/minimal/proprietary/tuna/media/audio/notifications/Nexus.mp3:system/media/audio/notifications/Nexus.mp3 \
    vendor/minimal/proprietary/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/minimal/proprietary/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd

# Inherit drm blobs
-include vendor/minimal/products/common_drm.mk

# Setup device specific product configuration.
PRODUCT_NAME := minimal_bacon
PRODUCT_BRAND := oneplus
PRODUCT_DEVICE := bacon
PRODUCT_MODEL := A001
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_GMS_CLIENTID_BASE := android-oneplus
TARGET_CONTINUOUS_SPLASH_ENABLED := true

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=oneplus/bacon/A0001:5.1/LMY47O/YNG1TAS0YL:user/release-keys PRIVATE_BUILD_DESC="bacon-user 5.1 LMY47O YNG1TAS0YL release-keys"
