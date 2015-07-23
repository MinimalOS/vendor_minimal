# Inherit AOSP device configuration for maguro.
$(call inherit-product, device/htc/m7/full_m7.mk)

# Telephony
$(call inherit-product, vendor/minimal/configs/telephony.mk)

# Release name
PRODUCT_RELEASE_NAME := m7

$(call inherit-product, vendor/minimal/products/common.mk)

# Inherit device configuration
$(call inherit-product, device/htc/m7/device.mk)

# Inherit common build.prop overrides
-include vendor/minimal/products/common_versions.mk

# Inherit drm blobs
-include vendor/minimal/products/common_drm.mk

# Device naming
PRODUCT_DEVICE := m7
PRODUCT_NAME := minimal_m7
PRODUCT_BRAND := htc
PRODUCT_MODEL := HTC One
PRODUCT_MANUFACTURER := HTC

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_m7 BUILD_ID=JZO54K BUILD_FINGERPRINT="htc/m7/m7:4.1.2/JZO54K/166937.7:user/release-keys" PRIVATE_BUILD_DESC="1.29.651.7 CL166937 release-keys"
     
PRODUCT_COPY_FILES += \
        vendor/minimal/proprietary/hybrid/hybrid_m7_no_nav.conf:system/etc/beerbong/properties.conf \
        vendor/minimal/proprietary/m7/media/bootanimation.zip:system/media/bootanimation.zip \
        vendor/minimal/proprietary/tuna/media/audio/notifications/Nexus.mp3:system/media/audio/notifications/Nexus.mp3
