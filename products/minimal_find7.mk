PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true

# Inherit AOSP device configuration for find7.
$(call inherit-product, device/oppo/find7/full_find7.mk)

# Inherit common product files.
$(call inherit-product, vendor/minimal/products/common.mk)

# Inherit some common minimal stuff. Not sure if this is needed
# $(call inherit-product, vendor/minimal/config/common_full_phone.mk)

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
PRODUCT_NAME := minimal_find7
PRODUCT_BRAND := oppo
PRODUCT_DEVICE := find7
PRODUCT_MODEL := Find7
PRODUCT_MANUFACTURER := Oppo
PRODUCT_GMS_CLIENTID_BASE := android-oppo
TARGET_CONTINUOUS_SPLASH_ENABLED := true


 PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=oppo/find7/Find7:5.1/LMY47O/XNPH25R:user/release-keys PRIVATE_BUILD_DESC="find7-user 5.1 LMY47O XNPH25R release-keys"
