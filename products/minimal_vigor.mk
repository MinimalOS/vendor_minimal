# Inherit AOSP device configuration for vigor.
$(call inherit-product, device/htc/vigor/vigor.mk)
$(call inherit-product, vendor/minimal/products/common.mk)

TARGET_SCREEN_WIDTH := 720
TARGET_SCREEN_HEIGHT := 1280

# Setup device specific product configuration.
PRODUCT_NAME := minimal_vigor
PRODUCT_BRAND := HTC
PRODUCT_DEVICE := vigor
PRODUCT_MODEL := Rezound
PRODUCT_MANUFACTURER := HTC

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_vigor TARGET_DEVICE=vigor BUILD_ID=IML74K BUILD_FINGERPRINT="verizon_wwe/htc_vigor/vigor:4.0.3/IML74K/372320.10:user/release-keys"


# Copy vigor specific prebuilt files
PRODUCT_COPY_FILES +=  \
	vendor/minimal/proprietary/hybrid/hybrid_hdpi.conf:system/etc/beerbong/properties.conf \
    vendor/minimal/proprietary/tuna/media/bootanimation.zip:system/media/bootanimation.zip \
    vendor/minimal/proprietary/vigor/media/audio/notifications/Nexus.mp3:system/media/audio/notifications/Nexus.mp3 \
	vendor/minimal/proprietary/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/minimal/proprietary/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd

# Inherit common build.prop overrides
-include vendor/minimal/products/common_versions.mk

# Inherit common cdma apns and Verizon Wireless Perms and Lib
$(call inherit-product, vendor/minimal/configs/vzw.mk)

# Inherit drm blobs
-include vendor/minimal/products/common_drm.mk
