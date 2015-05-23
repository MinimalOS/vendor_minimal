# Inherit AOSP device configuration.
$(call inherit-product, device/samsung/i9100/full_i9100.mk)

# Inherit common product files.
$(call inherit-product, vendor/minimal/products/common.mk)

# Inherit GSM common stuff.
$(call inherit-product, vendor/minimal/configs/gsm.mk)

# Inherit common build.prop overrides
-include vendor/minimal/products/common_versions.mk

# Copy toro specific prebuilt files
PRODUCT_COPY_FILES +=  \
	vendor/minimal/proprietary/hybrid/hybrid_hdpi.conf:system/etc/beerbong/properties.conf \
    vendor/minimal/proprietary/tuna/media/bootanimation.zip:system/media/bootanimation.zip \
    vendor/minimal/proprietary/tuna/media/audio/notifications/Nexus.mp3:system/media/audio/notifications/Nexus.mp3 \
    vendor/minimal/proprietary/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/minimal/proprietary/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd

# Setup device specific product configuration.
PRODUCT_NAME := minimal_i9100
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := i9100
PRODUCT_MODEL := GT-I9100
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=GT-I9100 TARGET_DEVICE=GT-I9100 BUILD_FINGERPRINT=samsung/GT-I9100/GT-I9100:4.0.3/IML74K/XXLPQ:user/release-keys PRIVATE_BUILD_DESC="GT-I9100-user 4.0.3 IML74K XXLPQ release-keys"

